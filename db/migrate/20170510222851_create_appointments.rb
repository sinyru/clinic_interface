class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.date :date_on, null: false
      t.string :location, null: false
      t.timestamps
    end
  end
end
