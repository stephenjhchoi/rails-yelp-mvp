class ReviewsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :new, :create]

  def index
    @restaurant.reviews.all
  end

  def create
    # @restaurant.reviews.create(reviews_params)
    @review = Review.new(reviews_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @review = Review.new
  end

  def edit
    @restaurant.reviews
  end

  def update
    @restaurant.reviews.update(review_params)
    redirect_to restaurant_path
  end

  def destroy
    @restaurant.reviews.destroy
    redirect_to restaurant_path
  end

  def show
    @restaurant.review
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end

end
