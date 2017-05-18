class Prescription < ApplicationRecord
  belongs_to :user
  belongs_to :drug
  belongs_to :patient
  belongs_to :doctor
end
