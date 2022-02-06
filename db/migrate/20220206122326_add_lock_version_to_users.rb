class AddLockVersionToUsers < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :version, :integer, default: 0
  end

  def down
    remove_column :users, :version, :integer
  end
end
