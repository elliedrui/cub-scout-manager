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
      # we trust the user at this point because google said yea this guy is the guy
    if !User.find_by(uid: auth['uid']) && !User.find_by(email: auth['info']['email'])
      @user = User.new
      @user.first_name = auth['info']['first_name']
      @user.last_name = auth['info']['last_name']
      @user.email = auth['info']['email']
      @user.uid = auth['uid']
      @user.password = auth['uid']
      @user.save
      session[:user_id] = @user.id  #actually log em in

      redirect_to user_path(@user)
      
    elsif !User.find_by(uid: auth['uid']) && User.find_by(email: auth['info']['email'])
      @user = User.find_by(email: auth['info']['email'])
      @user.uid = auth['uid']
      #could have comfirm passw but for now ill say if google trusts em so will i
      @user.save
      session[:user_id] = @user.id  
      redirect_to user_path(@user)
    else 
      @user = User.find_by(uid: auth['uid'])
      session[:user_id] = @user.id  
      
      redirect_to user_path(@user)
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
