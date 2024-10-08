class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: "Welcome! You have signed up successfully."
    else
      flash.now[:notice] = "Account was not created successfully. Try again."
      render root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email_address, :password_digest)
  end
end