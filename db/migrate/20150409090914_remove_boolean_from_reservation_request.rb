class RemoveBooleanFromReservationRequest < ActiveRecord::Migration
  def change
    remove_column :reservation_requests, :boolean
  end
end
