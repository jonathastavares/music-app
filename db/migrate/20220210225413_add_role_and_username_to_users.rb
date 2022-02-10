class AddRoleAndUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :boolean
    add_column :users, :username, :string 
  end
end
