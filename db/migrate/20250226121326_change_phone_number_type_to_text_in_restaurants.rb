class ChangePhoneNumberTypeToTextInRestaurants < ActiveRecord::Migration[7.1]
  def change
    change_column :restaurants, :phone_number, :text
  end
end
