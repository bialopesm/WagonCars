class AddUserNameToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :owner, :boolean
    add_column :users, :client, :boolean
    add_column :users, :address, :string
    add_column :users, :user_name, :string
  end
end
