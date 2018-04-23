class CreateBrandsBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands_brands do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :vat_number
      t.string :website
      t.string :phone_number
      t.string :categories, array: true, default: [], null: false
      t.string :facebook
      t.string :instagram
      t.string :youtube

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
