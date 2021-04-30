class CreateLocators < ActiveRecord::Migration[6.0]
  def change
    create_table :locators do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :marital_status
      t.string :address
      t.string :phone
      t.string :birthdate
      t.string :email
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_address
      t.string :contact_relation

      t.timestamps
    end
  end
end
