class CreateBodegas < ActiveRecord::Migration
  def change
    create_table :bodegas do |t|
      t.string :name
      t.string :address, null: false
      t.decimal :lat
      t.decimal :lng

      t.timestamps null: false
    end
  end
end
