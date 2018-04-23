class Brands::Brand < ApplicationRecord
  belongs_to :user

  has_one_attached :avatar
  has_many_attaced :images
end
