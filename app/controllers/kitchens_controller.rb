class KitchensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @kitchens = Kitchen.all
  end

end
