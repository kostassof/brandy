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
                :brand_avatar,
                :user

  validates :user_email, presence: true
  validates :brand_name, presence: true
  validates :brand_description, presence: true

  def save
    if valid?
      @user = User.create(first_name: user_first_name,
                          last_name: user_last_name,
                          email: user_email,
                          crypted_password: user_crypted_password,
                          password_salt: user_password_salt)
      @brand = Brands::Brand.create(name: brand_name,
                                    description: brand_description,
                                    categories: brand_categories,
                                    avatar: brand_avatar,
                                    user: @user)
    end
  end
end
