class CreateReservationType < ActiveRecord::Migration
  def change
    create_table :reservation_types do |t|
      t.string :name, required: true
    end
  end
end
