User.destroy_all
Post.destroy_all
Tag.destroy_all

users = User.create([
  { name: "ユーザー１", email: "user1@example.com", password: "password123", password_confirmation: "password123" },
  { name: "ユーザー２", email: "user2@example.com", password: "password123", password_confirmation: "password123" },
  { name: "ユーザー３", email: "carol@example.com", password: "password123", password_confirmation: "password123" }

])

tags = Tag.create!([
  { tag_name: "りんご" },
  { tag_name: "みかん" },
  { tag_name: "キウイ" },
  { tag_name: "ぶどう" },
  { tag_name: "バナナ" }
])

posts = Post.create!([
  { title: "りんご みかん", user: users[0], tags: [tags[0], tags[1]] },
  { title: "みかん キウイ", user: users[1], tags: [tags[1], tags[2]] },
  { title: "キウイ ぶどう", user: users[2], tags: [tags[2], tags[3]] },
  { title: "ぶどう", user: users[0], tags: [tags[3]] },
  { title: "バナナ", user: users[1], tags: [tags[4]] }
])

PostTag.create([
  { post: posts[0], tag: tags[0] },
  { post: posts[0], tag: tags[1] },
  { post: posts[1], tag: tags[2] }
])

Like.create!([
  { user: users[0], post: posts[1] }, # Alice likes "Advanced JavaScript"
  { user: users[0], post: posts[3] }, # Alice likes "Java in Depth"
  { user: users[1], post: posts[0] }, # Bob likes "Ruby Tips"
  { user: users[2], post: posts[2] } # Carol likes "Python for Data Science"
])

like_posts_by_tags = posts.first.tags.map do |tag|
  Post.joins(:tags).where(tags: { id: tag.id }).first
end
Like.create(like_posts_by_tags.map { |post| { user: users.last, post: post } })
