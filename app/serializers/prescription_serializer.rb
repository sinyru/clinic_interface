class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :patient_name, :drug_name, :drug_description, :pharmacy_location, :usage_direction, :duration, :patient_id, :drug_id

  def patient_name
    object.patient.first_name + " " + object.patient.last_name
  end

  def drug_name
    object.drug.name
  end

  def drug_description
    object.drug.description
  end

end
