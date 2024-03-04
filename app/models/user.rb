class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true, length: { maximum: 10 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
