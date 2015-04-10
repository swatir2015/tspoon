class RenameTableReservationRequest < ActiveRecord::Migration
  def change
    rename_table :reservation_requests, :reservations
  end
end
