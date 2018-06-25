class AddAttributesToSound < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :title, :string
    add_column :sounds, :description, :text
  end
end
