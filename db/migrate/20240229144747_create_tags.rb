class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    # インデックスを追加する部分
    add_index :tags, :name, unique: true
  end

  def down
    # インデックスの削除部分をコメントアウトするか、存在チェックを追加する
    # remove_index :tags, :name
    # もしくは以下のように存在チェックを追加する
    if index_exists?(:tags, :name, unique: true)
      remove_index :tags, :name
    end

    drop_table :tags
  end
end
