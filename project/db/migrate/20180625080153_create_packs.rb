class CreatePacks < ActiveRecord::Migration[5.2]
  def change
    create_table :packs do |t|
      t.string :title
      t.text :description
      t.references :sound, foreign_key: true

      t.timestamps
    end
  end
end
