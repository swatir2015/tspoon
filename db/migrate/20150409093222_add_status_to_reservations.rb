class AddStatusToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :pending, :boolean
  end
end
