class UsersController < ApplicationController
  def show
    current_user = User.find(session[:user_id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: "Welcome, #{@user.full_name}! You have signed up successfully."
      session[:user_id] = @user.id
    else
      redirect_to new_user_registration_path, notice: "Account was not created successfully. Try again."
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email_address, :password_digest)
  end
end