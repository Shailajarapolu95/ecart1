class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice]="Login successful"
      if user.admin==true
        redirect_to "dashboard"
      else
        redirect_to "Shopping(list of products)"
      end
    else
      flash[:notice]="Invalid Email or Password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice]="Logged Out"
    redirect_to '/login'
  end
end
