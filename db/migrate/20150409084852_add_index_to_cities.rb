class AddIndexToCities < ActiveRecord::Migration
  def change
    add_index :cities, [:name, :country_id], unique: true
  end
end
