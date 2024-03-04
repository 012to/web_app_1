
User.create([
  { name: 'ユーザー1', email: 'user1@example.com', encrypted_password: 'password1' },
  { name: 'ユーザー2', email: 'user2@example.com', encrypted_password: 'password2' },
  { name: 'ユーザー3', email: 'user3@example.com', encrypted_password: 'password3' }
])

Post.create([
  { title: 'タイトル1', content: '内容１' },
  { title: 'タイトル2', content: '内容2' },
  { title: 'タイトル3', content: '内容3' },
  { title: 'タイトル4', content: '内容4' },
  { title: 'タイトル5', content: '内容5' }
])

Tag.create([
  { name: 'タグ1' },
  { name: 'タグ2' },
  { name: 'タグ3' },
  { name: 'タグ4' },
  { name: 'タグ5' }
])
