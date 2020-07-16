class SessionsController < ApplicationController

  skip_before_action :verify_authenticity_token, :only => [:googlecreate]


  def new
    @user = User.new
    render :login
  end

  #login action
  def create
 
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @error = true
      render :login
    end
  end


  def googlecreate
    
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      byebug
      u.first_name = auth['info']['first_name']
      u.last_name = auth['info']['last_name']
      u.email = auth['info']['email']
      u.password = auth['uid']
    end
  end


  def home 
  end

  #logout route
  def destroy
    session.clear
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end

  
end
