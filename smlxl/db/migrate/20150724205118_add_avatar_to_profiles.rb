class AddAvatarToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :avatar, :attachment
  end
end
