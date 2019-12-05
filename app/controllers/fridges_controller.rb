class FridgesController < ApplicationController
  
  def index
    render json: Fridge.all
  end

  def create
    @fridge = Fridge.new(fridge_params)
    @fridge.save
    @fridge.user = @user

    render json: @fridge
  end

  def destroy
  
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def fridge_params
    params.require(:fridge).permit(:name, :user_id, :food_capacity, :drink_capacity, :is_full, :total_items_value)
  end

end
