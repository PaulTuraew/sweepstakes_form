class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date_of_birth
      t.integer :zip_code
      t.string :cable_satellite
      t.boolean :subscribe

      t.timestamps null: false
    end
  end
end
