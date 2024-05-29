class ReservationsController < ApplicationController
  before_action :set_kitchen, only: [:new, :create]
  before_action :set_reservation, only: [:show, :update]

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.kitchen = @kitchen
    @reservation.user = current_user
    if @reservation.save
      redirect_to my_reservations_path(current_user), notice: 'Reservation was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def update
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  private

  def set_kitchen
    @kitchen = Kitchen.find(params[:kitchen_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :total_price, :status)
  end
end
