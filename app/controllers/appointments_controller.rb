class AppointmentsController < ApplicationController

  before_action :set_params, only: [:create, :update]
  def index
    if current_user.role == 'patient'
      @appointments = Appointment.where(patient_id: current_user.id)
    else
      @appointments = Appointment.where(doctor_id: current_user.id)
    end
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def edit
  end

  def create
    @appointment = current_user.appointments.build(set_params)
    if @appointment.save
      flash[:success] = 'Appointment created successfully'
      redirect_to user_appointments_path(current_user.id)
    else
      flash[:error] = @appointment.errors.messages
      render 'new', locales: {user_id: set_params[:doctor_id]}
    end
  end

  def update
  end
  
  def destroy
  end

  private

  def set_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :query)
  end

end
