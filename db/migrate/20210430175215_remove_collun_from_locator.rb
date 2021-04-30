class RemoveCollunFromLocator < ActiveRecord::Migration[6.0]
  def change
    remove_column :locators, :birthdate, :string
  end
end
