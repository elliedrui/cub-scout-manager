class UsersController < ApplicationController

  #loading signup form
  def new 
    @user = User.new
  end

  #signup
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_is] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
  


end
