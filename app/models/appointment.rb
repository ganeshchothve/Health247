class Appointment
  include Mongoid::Document
  field :doctor_id, type: String
  field :patient_id, type: String
  field :query, type: String
  field :feedback, type: String

  belongs_to :user
end
