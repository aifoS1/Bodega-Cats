class AddBodegaNameToCats < ActiveRecord::Migration
  def change
    add_column :cats, :bodega_name, :string
  end
end
