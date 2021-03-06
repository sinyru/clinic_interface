# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :patients
  has_many :doctors
  has_many :appointments
  has_many :drugs
  has_many :prescriptions
end
