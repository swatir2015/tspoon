class CreateReservationRequest < ActiveRecord::Migration
  def change
    create_table :reservation_requests do |t|
      t.belongs_to :cities, required: true
      t.string :requested_date, required: true
      t.string :additional_dates
      t.integer :number_of_guests, required: true
      t.belongs_to :reservation_types, required: true
      t.belongs_to :meal_types, required: true
      t.boolean :allergies, :boolean
      t.string :allergies_text
      t.belongs_to :spice
      t.boolean :alchohol
      t.integer :drinks
      t.boolean :status
      t.integer :user_id
    end
  end
end
