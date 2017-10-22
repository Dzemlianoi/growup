class AddNameAndAvatarToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_belongs_to :users, :group
  end
end
