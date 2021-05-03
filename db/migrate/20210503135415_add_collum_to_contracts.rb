class AddCollumToContracts < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :payment_date, :string
  end
end
