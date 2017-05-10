class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :phone, :location
end
