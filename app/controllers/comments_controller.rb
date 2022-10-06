class CommentsController < ApplicationController

  before_action :set_appointment, only: [:create]
  before_action :set_params, only: [:create]

  def new
  end

  def create
    comment = Comment.new(set_params)
    @appointment.comment = comment
    if @appointment.save
      flash[:success] = 'Comment Added successfully'
      redirect_to user_appointments_path(current_user.id)
    else
      flash[:error] = @appointment.errors.messages
      render 'new', locales: {user_id: set_params[:doctor_id]}
    end
    params
  end

  private
  
  def set_appointment
    @appointment = Appointment.where(id: params[:appointment_id]).first
    params
  end

  def set_params
    params.require(:comment).permit(:response)
  end

end