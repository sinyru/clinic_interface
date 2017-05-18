class Doctor < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :prescriptions
end
