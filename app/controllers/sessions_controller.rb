class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = params[:password] == 'kikipat'
    if user
      session[:password] = params[:password]
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  def destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    redirect_to new_session_path
  end

end
