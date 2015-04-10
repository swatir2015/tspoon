class CreateMealType < ActiveRecord::Migration
  def change
    create_table :meal_types do |t|
      t.string :name, required: true
    end
  end
end
