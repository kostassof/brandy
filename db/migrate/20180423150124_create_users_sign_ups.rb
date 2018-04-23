class CreateUsersSignUps < ActiveRecord::Migration[5.2]
  def change
    create_table :users_sign_ups do |t|

      t.timestamps
    end
  end
end
