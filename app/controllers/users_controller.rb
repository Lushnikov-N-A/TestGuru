class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to tests_path, status: :see_other
    else
      render :new, status: :see_other
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :email, :password, :password_confirmation)
  end
end
