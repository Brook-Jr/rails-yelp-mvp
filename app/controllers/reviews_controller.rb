class ReviewsController < ApplicationController
  before_action :find_restaurant
  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.new(review_params)

    if @review.save
      redirect_to @restaurant, notice: 'Review successfully created!'
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
