class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :patient_name, :doctor_name, :prescripted_on, :drug_name, :drug_description, :pharmacy_location, :usage_direction, :duration, :patient_id, :drug_id, :doctor_id

  def patient_name
    object.patient.first_name + " " + object.patient.last_name
  end

  def drug_name
    object.drug.name
  end

  def drug_description
    object.drug.description
  end

  def doctor_name
    object.doctor.first_name + " " + object.doctor.last_name
  end

  def prescripted_on
    Time.now.strftime("%m/%d/%Y")
  end
end
