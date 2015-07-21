class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.stringtext :title
      t.string :tags

      t.timestamps null: false
    end
  end
end
