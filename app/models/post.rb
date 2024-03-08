class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

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
end
