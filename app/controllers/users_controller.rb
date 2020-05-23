# frozen_string_literal: true

# Handles creation, deletion and modification of users,
# authorization check comes from from ApplicationController
class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :fridges]
  # skip_before_action :authorized, only: [:create]
  #TODO: remove fridges

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :ok
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'Failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: { user: UserSerializer.new(@user) }, status: :updated
    else
      render json: { error: 'Failed to update user' }, status: :not_acceptable
    end
  end

  def destroy
    # TODO: Implement
  end

  def fridges
    @user = User.find(params[:id])
    render json: { fridges: @user.fridges }, include: 'food_items', status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :phone_number)
  end
end
