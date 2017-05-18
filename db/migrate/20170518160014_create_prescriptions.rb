class CreatePrescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :prescriptions do |t|
      t.string :pharmacy_location, null: false
      t.string :usage_direction, null: false
      t.string :duration, null: false
      t.timestamps
    end
  end
end
