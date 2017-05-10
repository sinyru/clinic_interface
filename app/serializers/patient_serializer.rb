class PatientSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :first_name, :last_name, :phone, :prescription, :height, :weight
end
