class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  # def edit
  #   # @task = Task.find(params[:id])
  # end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path(@restaurant)
    else
      render :new
    end

  end

  # def update
  #   # @task = Task.find(params[:id])
  #   # @task.update(task_params)
  #   # redirect_to tasks_path
  #  end

  def show
    @review = Review.new
  end

  # def destroy
  #   # @task = Task.find(params[:id])
  #   # @task.destroy
  #   # no need for app/views/restaurants/destroy.html.erb
  #   # redirect_to tasks_path(@task)
  # end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

   def set_restaurant
     @restaurant = Restaurant.find(params[:id])
   end

end
