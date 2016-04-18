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
       render json: User.all
     else
       render json: User.all
     end
   end
 
   def update
     @book = Book.find(params[:id])
 
     if @book.update_attributes(user_params)
       redirect_to :action => 'show', :id => @book
     else
       @subjects = Subject.all
       render :action => 'edit'
     end
   end
   
  def user_params
    params.require(:user).permit(:username, :full_name, :email_address, :address)
  end
end
