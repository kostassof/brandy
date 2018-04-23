class Users::UsersController < ApplicationController

  def new
    @sign_up = Users::SignUp.new
  end
end
