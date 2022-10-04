class Appointment
  include Mongoid::Document
  field :doctor_id, type: String
  field :patient_id, type: String
  field :query, type: String
  field :feedback, type: String

  validates :query, presence: true
  
  has_one :comment

end