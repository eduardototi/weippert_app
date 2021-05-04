class CreateInstallments < ActiveRecord::Migration[6.0]
  def change
    create_table :installments do |t|
      t.date :payment_day
      t.float :amount
      t.boolean :payment_status, :default => false
      t.references :contract, null: false, foreign_key: true

      t.timestamps
    end
  end
end
