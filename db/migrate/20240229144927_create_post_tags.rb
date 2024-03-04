class CreatePostTags < ActiveRecord::Migration[7.0]
  def change
    create_table :post_tags do |t|
      t.references :post, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end

    # インデックスを追加する部分をコメントアウトしておく
    add_index :post_tags, [:post_id, :tag_id], unique: true
  end

  # ロールバック時にインデックスを削除するマイグレーションを追加
  def down
    # インデックスを削除
    remove_index :post_tags, [:post_id, :tag_id]

    # テーブルを削除
    drop_table :post_tags
  end
end
