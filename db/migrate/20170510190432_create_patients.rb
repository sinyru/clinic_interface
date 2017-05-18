class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :primary_doctor
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :height, null: false
      t.integer :weight, null: false
      t.integer :phone, null: false, limit: 8
      t.timestamps
    end
  end
end
