class ChangeColumnOfUser < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :email
    add_column :users, :username, :string, null: false, default: "none"
  end
end
