class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :pharmacy_location, :usage_direction, :duration
end
