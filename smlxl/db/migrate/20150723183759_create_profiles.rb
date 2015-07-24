class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.attachment :picture

      t.timestamps null: false
    end
  end
end
