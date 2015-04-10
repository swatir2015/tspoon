class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, required: true
      t.belongs_to :country
    end
  end
end
