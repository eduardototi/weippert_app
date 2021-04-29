class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.date :birthdate
      t.string :address
      t.string :marital_status
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
