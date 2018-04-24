class Users::SignUpsController < ApplicationController
  def new
    @sign_up = Users::SignUp.new
  end

  def create
    @sign_up = Users::SignUp.new(sign_up_params)

    if @sign_up.save
      redirect_to admin_path(@sign_up.user)
    else
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:sign_up).permit(:user_first_name,
                                    :user_last_name,
                                    :user_email,
                                    :user_crypted_password,
                                    :user_password_salt,
                                    :brand_name,
                                    :brand_description,
                                    brand_categories: [],
                                    :brand_avatar)
  end
end
