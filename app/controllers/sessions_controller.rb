class SessionsController < ApplicationController
  def new
    
  end

  def create
    @user = User.find_by(email_address: params[:email_address])

    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to profile_path
    elsif !@user
      redirect_to login_path
      flash[:alert] = "User Account was not found."
    else
      redirect_to login_path
      flash[:alert] = "Account was found, but password was incorrect."
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "You have successfully logged out."
  end
end