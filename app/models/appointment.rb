class Appointment
  include Mongoid::Document
  # field :doctor_id, type: String
  # field :patient_id, type: String
  field :query, type: String
  field :response, type: String

  validates :query, presence: true
  
  # belongs_to :user
  belongs_to :doctor, class_name: 'User'
  belongs_to :patient, class_name: 'User'

  has_one :comment

  # def patient
  #   User.where(id: self.patient_id).first
  # end

  # def doctor
  #   User.where(id: self.doctor_id).first
  # end

end