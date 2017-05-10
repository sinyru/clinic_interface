class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :prescription, :height, :weight
end
