class PatientSerializer < ActiveModel::Serializer
  attributes :id, :primary_doctor, :first_name, :last_name, :phone, :prescription, :height, :weight
end
