class Users::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update]

  def show

  end

  def update

  end

  private

  def find_user
    @user = Users::User.find params[:id]
  end
end
