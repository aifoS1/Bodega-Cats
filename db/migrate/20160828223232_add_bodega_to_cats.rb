class AddBodegaToCats < ActiveRecord::Migration
  def change
    add_column :cats, :address, :string
    add_column :cats, :lat, :decimal
    add_column :cats, :lng, :decimal
  end
end
