class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.float :reantal_amount
      t.float :iptu_amount
      t.date :contract_expiration_date
      t.integer :contract_term
      t.float :discount
      t.string :readjust
      t.integer :fees
      t.boolean :iptu_charge
      t.date :next_payment_date
      t.boolean :is_active
      t.references :house, null: false, foreign_key: true
      t.references :locator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
