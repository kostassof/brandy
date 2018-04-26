class Brands::Brand < ApplicationRecord
  self.table_name = 'brands'
  belongs_to :admin, class_name: 'Users::User', foreign_key: :user_id
  has_many :addresses, class_name: 'Brands::Address'

  has_one_attached :avatar
  has_many_attached :images
end
