class AddAdminToSound < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :admin, :boolean, default: false
  end
end
