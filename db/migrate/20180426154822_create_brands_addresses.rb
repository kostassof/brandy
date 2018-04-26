class CreateBrandsAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :brands_addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :province
      t.string :state
      t.string :zip
      t.float :latitude
      t.float :longitude
      t.references :brands, foreign_key: true

      t.timestamps
    end
  end
end
