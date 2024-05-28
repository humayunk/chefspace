class KitchensController < ApplicationController

  def index
    @kitchens = Kitchen.all
  end

  def show
  end

end
