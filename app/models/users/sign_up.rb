class Users::SignUp
  include ActiveModel::Model

  attr_accessor :user_first_name,
                :user_last_name,
                :user_email,
                :user_crypted_password,
                :user_password_salt,
                :brand_name,
                :brand_description,
                :brand_categories,
                :brand_avatar

end
