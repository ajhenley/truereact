class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :lname, :string
    add_column :users, :fname, :string
    add_column :users, :instid, :string
  end
end
