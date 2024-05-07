class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  validates :title, presence: true
  validates :content, length: { maximum: 80 }
  validate :validate_image_size

  def self.ransackable_attributes(auth_object = nil)
    %w[title content]
  end

  def self.ransackable_associations(auth_object = nil)
    ["tags"]
  end

  def liked_by?(user)
    liked_users.include?(user)
  end

  def save_posts(tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - tags
    new_tags = tags - current_tags

    old_tags.each do |old_name|
      self.tags.delete Tag.find_by(tag_name: old_name)
    end

    new_tags.each do |new_name|
      post_tag = Tag.find_or_create_by(tag_name: new_name)
      self.tags << post_tag
    end
  end

  def self.recommended_for(user)
    favorite_tags = user.favorite_tags
    Post.joins(:tags)
        .where(tags: { tag_name: favorite_tags })
        .where.not(user_id: user.id)
        .where.not(id: user.likes_posts.select(:id))
        .distinct.limit(3)
  end

  private

  def validate_image_size
    return unless post_image.size > 0.5.megabytes

    errors.add(:post_image, I18n.t('errors.messages.max_size_error', max_size: '500KB'))
  end
end
