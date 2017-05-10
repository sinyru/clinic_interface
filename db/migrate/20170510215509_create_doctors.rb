class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :specialty, null: false
      t.integer :phone, null: false, limit: 8
      t.string :location, null: false
      t.timestamps
    end
  end
end
