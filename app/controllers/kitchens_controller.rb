class KitchensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @kitchens = Kitchen.all
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.user = current_user
    if @kitchen.save
      redirect_to my_kitchens_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_kitchens
    @kitchens = current_user.kitchens
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name, :address, :daily_rate, :kitchen_type, :description, :has_parking, :has_fire_safety, :has_refrigeration, :storage_type, :has_oven, :has_stove, :has_fryer, :has_dishwasher, :has_cookware, :has_cutlery, :availability, :prep_tables)
  end
end
