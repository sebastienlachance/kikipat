#coding: utf-8
class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = params[:password] == Setting.password 
    if user
      session[:password] = params[:password]
      redirect_to root_url, :notice => "Bienvenue!"
    else
      flash.now.alert = "Nom d'usager ou mot de passe invalide"
      render "new"
    end
  end
  def destroy
    reset_session
    flash[:notice] = "Vous avez été déconnecté avec succès!"
    redirect_to new_session_path
  end

end
