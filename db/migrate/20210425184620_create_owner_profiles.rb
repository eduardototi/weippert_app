class CreateOwnerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :owner_profiles do |t|
      t.string :name
      t.string :cpg
      t.string :rg
      t.date :birthdate
      t.string :addrees
      t.string :marital_status
      t.string :email

      t.timestamps
    end
  end
end
