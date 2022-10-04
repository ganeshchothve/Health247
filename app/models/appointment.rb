class Appointment
  include Mongoid::Document
  field :doctor_id, type: String
  field :patient_id, type: String
  field :query, type: String
  field :feedback, type: String

  validates :query, presence: true
  
  belongs_to :user
  has_one :comment

  def patient
    User.where(id: self.patient_id).first
  end

  def doctor
    User.where(id: self.doctor_id).first
  end

end