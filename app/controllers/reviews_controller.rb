class ReviewsController < ApplicationController

  def create
    @restauran = Restaurant.find(params[:restaurant_id])
    @review = Review.new(restaurant_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show", status: unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:review).permit(:rating, :content)
  end
end
