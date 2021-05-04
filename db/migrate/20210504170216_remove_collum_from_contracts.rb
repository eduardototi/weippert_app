class RemoveCollumFromContracts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contracts, :payment_date, :string
  end
end
