class BrandCategoriesCanBeNull < ActiveRecord::Migration[5.2]
  def change
    add_column :brands_brands, :categories, :string, array: true, default: '{}', null: true
  end
end
