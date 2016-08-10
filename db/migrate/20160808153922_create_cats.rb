class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.references :bodega, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
