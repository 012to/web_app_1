class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likes_posts, through: :likes, source: :post
  validates :name, presence: true, length: { maximum: 10 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

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
end
