class ChangeUniqueIndexOfUsers < ActiveRecord::Migration[6.1]
  def up
    remove_index :users, :email
    add_index :users, [:email, :id], unique: true
  end

  def down
    add_index :users, :email, unique: true
    remove_index :users, [:email, :id]
  end
end
