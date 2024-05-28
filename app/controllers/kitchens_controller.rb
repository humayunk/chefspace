class KitchensController < ApplicationController
  def index
    @kitchens = Kitchen.all
  end
end
