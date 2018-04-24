class User < ApplicationRecord
  has_many :brands, class_name: 'Brands::Brand'
end
