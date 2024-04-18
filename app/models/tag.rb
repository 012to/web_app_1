class Tag < ApplicationRecord
  has_many :post_tags, dependent: :destroy
  has_many :posts, through: :post_tags
  validates :tag_name, length: { in: 2..10 }, uniqueness: true

  def self.ransackable_associations(auth_object = nil)
    ["tag_name"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["tag_name"]
  end
end
