class SessionsController < ApplicationController
  def new
    
  end

  def create
    @user = User.find_by(email_address: params[:email_address])

    if @user
      session[:user_id] = @user.id
      flash[:success] = "Welcome, #{@user.full_name}!"
      redirect_to root_path
    else
      redirect_to login_path
      flash[:alert] = "User Account was not found."
    end
  end
end