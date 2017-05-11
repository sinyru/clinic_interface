class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :date_on, :location, :patient_id, :doctor_id, :patient_name, :doctor_name, :doctor_specialty

  def patient_name
    object.patient.first_name + " " + object.patient.last_name
  end

  def doctor_name
    object.doctor.first_name + " " + object.doctor.last_name
  end

  def doctor_specialty
    object.doctor.specialty
  end

end
