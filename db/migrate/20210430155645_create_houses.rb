class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :description
      t.string :address
      t.boolean :rental_status, default: false
      t.string :house_name
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
