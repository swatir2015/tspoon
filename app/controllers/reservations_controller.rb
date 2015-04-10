class ReservationsController < ApplicationController
#  before_action :set_widget, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations1.json
  def receipt
    @page_title = "Success!"
    render :template => "reservations/receipt"
  end

  # GET /reservations/new
  def new
    @page_title = "Concierge Service"
    @reservation = Reservation.new
    @countries = Country.all
    @cities = City.all
    @reservation_types = ReservationType.all
    @meal_types = MealType.all
    @spice_levels = SpiceLevel.all
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to receipt_reservation_path(:id => @reservation.id), notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: success_path }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:cities_id, 
                                          :requested_date, 
                                          :additional_dates, 
                                          :number_of_guests, 
                                          :reservation_types_id, 
                                          :meal_types_id,
                                          :allergies,
                                          :allergies_text,
                                          :spice_id,
                                          :alchohol,
                                          :drinks)
    end

end
