class AddDrugToPrescriptions < ActiveRecord::Migration[5.0]
  def change
    add_reference :prescriptions, :drug, foreign_key: true
  end
end
