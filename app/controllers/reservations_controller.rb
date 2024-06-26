class ReservationsController < ApplicationController
  before_action :set_kitchen, only: [:new, :create]
  before_action :set_reservation, only: [:show, :update]

  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(create_reservation_params)
    @reservation.kitchen = @kitchen
    @reservation.user = current_user
    if @reservation.save
      redirect_to new_kitchen_reservation_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def update
    @reservation.update(update_reservation_params)
    redirect_to my_kitchens_path
  end

  private

  def set_kitchen
    @kitchen = Kitchen.find(params[:kitchen_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def create_reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :total_price)
  end

  def update_reservation_params
    params.require(:reservation).permit(:status)
  end
end
