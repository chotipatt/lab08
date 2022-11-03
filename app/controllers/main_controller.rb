class MainController < ApplicationController
  def login
  end

  def create
    a = User.where(login: params[:login]).first
    if a && a.authenticate(params[:password])
      redirect_to users_path
      session[:logged_in] = true
    else
      redirect_to main_login_path , notice:'wrong login or password '
    end
  end

  def destroy
    reset_session
  end
end
