class Users::SignUpsController < ApplicationController
  def new
    @sign_up = Users::SignUp.new
  end

  def create
    @sign_up = Users::SignUp.new(sign_up_params)

    if @sign_up.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:users_sign_up).permit(:user_first_name,
                                          :user_last_name,
                                          :user_email,
                                          :user_crypted_password,
                                          :user_password_salt,
                                          :user_password,
                                          :user_password_confirmation,
                                          :brand_name,
                                          :brand_description,
                                          :brand_avatar,
                                          brand_categories: [])
  end
end
