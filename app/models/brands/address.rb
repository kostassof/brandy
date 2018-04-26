class Brands::Address < ApplicationRecord
  belongs_to :brand, class_name: 'Brands::Brand', foreign_key: :brand_id
end
