class Admin::ReservationsController < ApplicationController
#  before_action :set_widget, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    @page_title = "Admin Panel: All Reservations"
    @reservations = Reservation.all
    @countries = Country.all
    @cities = City.all
    @reservation_types = ReservationType.all
    @meal_types = MealType.all
    @spice_levels = SpiceLevel.all
  end
end
