class UsersController < ApplicationController
  def show
    current_user = User.find(session[:user_id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # require 'pry'; binding.pry

    if @user.save
      redirect_to profile_path(@user.id), notice: "Welcome, #{@user.full_name}! You have signed up successfully."
      session[:user_id] = @user.id
    else
      redirect_to new_user_registration_path, notice: "Account was not created successfully. Try again."
    end
  end

  def destroy
    current_user = User.find(session[:user_id])
    current_user.destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Your account has been deleted."
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email_address, :password, :password_confirmation)
  end
end