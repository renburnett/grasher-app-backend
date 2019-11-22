class FoodItemsController < ApplicationController
  def index
    render json: FoodItem.all
  end
end
