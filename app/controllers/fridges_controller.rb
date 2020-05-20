# frozen_string_literal: true

class FridgesController < ApplicationController
  def create
    @fridge = Fridge.new(fridge_params)
    @user = User.find(params[:user_id])
    @fridge.user = @user
    
    if @fridge.save
      render json: { user: FridgeSerializer.new(@fridge) }, status: :created
    else
      render json: { message: 'Error, failed to create fridge' }
    end
  end

  def update
    @fridge = Fridge.find(fridge_params[:id])
    @fridge.update(fridge_params)
    render json: { user: FridgeSerializer.new(@fridge) }, status: :updated
  end

  def destroy
    @fridge = Fridge.find(params[:id])
    @fridge.destroy
    render json: { `Fridge ID:#{params[:id]} deleted`}, status: :destroyed
  end

  def food_items
    @fridge = Fridge.find(params[:id])
    @food_items = @fridge.food_items.as_json
    render json: { food_items: @food_items }, status: :ok
  end

  private

  def fridge_params
    params.require(:fridge).permit(
      :name,
      :user_id,
      :food_capacity,
      :drink_capacity,
      :is_full,
      :total_items_value
    )
  end
end
