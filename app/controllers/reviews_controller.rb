class ReviewsController < ApplicationController
  class ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_kitchen, only: [:create, :destroy]

    def create
      @review = @kitchen.reviews.new(review_params)
      @review.user = current_user
      if @review.save
        redirect_to kitchen_path(@kitchen), notice: 'Review was successfully created.'
      else
        redirect_to kitchen_path(@kitchen), alert: 'There was an error creating the review.'
      end
    end

    def destroy
      @review = @kitchen.reviews.find(params[:id])
      if @review.destroy
        redirect_to kitchen_path(@kitchen), notice: 'Review was successfully deleted.'
      else
        redirect_to kitchen_path(@kitchen), alert: 'There was an error deleting the review.'
      end
    end

    private

    def set_kitchen
      @kitchen = Kitchen.find(params[:kitchen_id])
    end

    def review_params
      params.require(:review).permit(:content, :rating)
    end
  end
end
