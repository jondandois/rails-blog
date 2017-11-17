class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      log_in user
      remember user
      redirect_to user, notice: "Logged In!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_url, notice: "Logged out!"
  end

  private

  def session_params
    params.permit(:email, :password)
  end
end
