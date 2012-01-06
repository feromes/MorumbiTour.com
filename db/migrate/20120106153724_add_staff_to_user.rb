class AddStaffToUser < ActiveRecord::Migration
  def change
    add_column :user, :staff, :boolean, :default => false, :null => false
  end
end
