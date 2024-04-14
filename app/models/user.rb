class User < ApplicationRecord
  after_create :send_notification_email_if_enabled
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likes_posts, through: :likes, source: :post
  has_many :sns_credential, dependent: :destroy
  validates :name, presence: true, length: { maximum: 10 }
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[google_oauth2]

  class << self
    def without_sns_data(auth)
      user = User.where(email: auth.info.email).first

      if user.present?
        sns = SnsCredential.create(
          uid: auth.uid,
          provider: auth.provider,
          user_id: user.id
        )
      else
        user = User.create(
          name: auth.info.name,
          email: auth.info.email,
          password: Devise.friendly_token(10)
        )
        sns = SnsCredential.create(
          user_id: user.id,
          uid: auth.uid,
          provider: auth.provider
        )
      end
      { user:, sns: }
    end

    def with_sns_data(auth, snscredential)
      user = User.where(id: snscredential.user_id).first
      if user.blank?
        user = User.create(
          name: auth.info.name,
          email: auth.info.email,
          profile_image: auth.info.image,
          password: Devise.friendly_token(10)
        )
      end
      { user: }
    end

    def find_oauth(auth)
      uid = auth.uid
      provider = auth.provider
      snscredential = SnsCredential.where(uid:, provider:).first
      if snscredential.present?
        user = with_sns_data(auth, snscredential)[:user]
        sns = snscredential
      else
        user = without_sns_data(auth)[:user]
        sns = without_sns_data(auth)[:sns]
      end
      { user:, sns: }
    end
  end

  def mine?(object)
    object.user_id == id
  end

  def like(post)
    likes_posts << post
  end

  def unlike(post)
    likes_posts.destroy(post)
  end

  def like?(post)
    likes_posts.include?(post)
  end

  private

  def send_notification_email_if_enabled
    return unless enable_notifications?

    UserMailer.with(user: self).notification_enabled_email.deliver_later
  end
end
