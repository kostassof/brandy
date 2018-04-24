class Brands::Brand < ApplicationRecord
  belongs_to :admin, class_name: 'User', foreign_key: :user_id

  has_one_attached :avatar
  has_many_attached :images
end
