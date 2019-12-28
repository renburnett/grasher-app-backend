class UsersController < ApplicationController
  
  def index
    render json: User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      puts 'user created!'
    end
    
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    render json: @user
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :budget, :password, :id)
  end
end
