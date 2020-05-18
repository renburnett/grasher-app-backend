# frozen_string_literal: true

class FoodItemsController < ApplicationController
  before_action :set_fridge, only: %i[create]

  def create
    @food_item = FoodItem.new(food_params)
    @food_item.fridge = @fridge

    if @food_item.save
      @food_item.fridge = @fridge
      render json: { user: FoodSerializer.new(@food_item) }, status: :created
    else
      render json: { message: 'Error, failed to create food item' }
    end
  end

  def show
    @food_item = FoodItem.find(food_params[:id])
    render json: @food_item
  end

  def update
    #TODO: check syntax
    @food_item = FoodItem.find(food_params[:id])
    @food_item.update(food_params)
    render json: @food_item
  end

  def destroy
    @food_item = FoodItem.find(params[:id])
    @food_item.destroy
    render json: @food_item
  end

  private

  def set_fridge
    @fridge = Fridge.find(params[:fridge_id])
  end

  def food_params
    params.require(:food_item).permit(
      :name,
      :is_drink,
      :price,
      :food_type,
      :expiration_date,
      :fridge_id,
      :id,
      :quantity
    )
  end
end
