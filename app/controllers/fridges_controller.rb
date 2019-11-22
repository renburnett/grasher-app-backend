class FridgesController < ApplicationController
  def index
    render json: Fridge.all
  end
end
