class Users::User < ApplicationRecord
  self.table_name = 'users'

  has_many :brands, class_name: 'Brands::Brand'
  acts_as_authentic
end
