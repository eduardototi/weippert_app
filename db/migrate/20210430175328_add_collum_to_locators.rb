class AddCollumToLocators < ActiveRecord::Migration[6.0]
  def change
    add_column :locators, :birthdate, :date
  end
end
