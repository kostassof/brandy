class ChangeBrandsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :brands_brands, :brands
  end
end
