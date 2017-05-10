class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date_on, :location
end
