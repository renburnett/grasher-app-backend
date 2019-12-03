class FoodItemsController < ApplicationController
  before_action :set_fridge, only: %i[create update]

  def index
    render json: FoodItem.all
  end

  def create
    @food_item = FoodItem.new(food_params)
    @food_item.save
    @food_item.fridge = @fridge

    render json: @food_item
  end

  def destroy
    @food_item = FoodItem.find(params[:id])
    @food_item.destroy
  end

  private

  def set_fridge
    @fridge = Fridge.find(params[:fridge_id])
  end

  def food_params
    params.require(:food_item).permit(:name, :is_drink, :price, :food_type, :expiration_date, :fridge_id, :id)
  end

end
