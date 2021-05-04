class AddNewCollumToContracts < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :payment_date, :date
  end
end
