class UsersController < ApplicationController
  wrap_parameters User
  protect_from_forgery with: :null_session
  def list
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: nil
    end
  end
  
  def get_one
     @user = User.find(params[:id])
     render json: @user
   end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      @user = User.find(params[:id])
    end
    render json: @user
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    render json: @user
  end

  def user_params
    params.require(:user).permit(:username, :full_name, :email_address, :address)
  end
end
