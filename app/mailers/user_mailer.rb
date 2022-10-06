class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def appointment_created
    @patient = params[:patient]
    @doctor = params[:doctor]
    @url  = 'localhost:3000/appointments'
    mail(to: "#{@patient.email}, #{@doctor.email}", subject: 'Appointment Created')
  end

end
