class AddPatientToPrescriptions < ActiveRecord::Migration[5.0]
  def change
    add_reference :prescriptions, :patient, foreign_key: true
  end
end
