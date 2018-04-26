class Users::UserSessionsController < ApplicationController
  def new
    @user_session = Users::UserSession.new
  end

  def create
    @user_session = Users::UserSession.new(user_session_params.to_h)
    if @user_session.save
      flash[:success] = "Welcome back!"
      redirect_to admin_path(current_user)
    else
      render :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:success] = "Goodbye!"
    redirect_to root_path
  end

  private

  def user_session_params
    params.require(:users_user_session).permit(:email, :password, :remember_me)
  end
end
