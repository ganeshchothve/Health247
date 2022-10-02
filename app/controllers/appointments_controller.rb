class AppointmentsController < ApplicationController

  before_action :set_user, only: [:]
  before_action :set_params, only: [:create, :update]
  def index
    @appointments = Appointment.where(user_id:params[:user_id])
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def edit
  end

  def create
    @appointment = Appointment.new(set_params)
    if @appointment.save
      redirect_to user_appointments_path(current_user.id)
    else
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
