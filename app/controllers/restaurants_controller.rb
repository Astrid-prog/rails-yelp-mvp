class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @review = Review.new
    @restaurant= Restaurant.find(params[:id])
  end
  def new
    @restaurant= Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
  def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to restaurant_path(@restaurant)
	end
  
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :review)
  end
end
