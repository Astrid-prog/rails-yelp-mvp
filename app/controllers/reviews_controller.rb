class ReviewsController < ApplicationController
  def create
		@review = Review.new(review_params)
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review.restaurant = @restaurant
		if @review.save
			redirect_to restaurant_path(@restaurant)
		else
			render :restaurants/show
		end
  end
	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to restaurant_path(@review.restaurant)
	end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
