class SessionsController < ApplicationController
  def new; end

  def delete
    reset_session
    redirect_to root_path
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cookies.delete(:user_in_path) || tests_path
    else
      flash.now[:alert] = 'Are you a Guru? Verify your Email and password please.' # Rails 7, turbo
      render :new, status: :unprocessable_entity # Rails 7, turbo
    end
  end
end
