class AddDoctorToPrescriptions < ActiveRecord::Migration[5.0]
  def change
    add_reference :prescriptions, :doctor, foreign_key: true
  end
end
