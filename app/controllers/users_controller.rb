class UsersController < ApplicationController

  before_action :set_user, except: %i[index new]

  def index
  end

  def new
    @user = User.new
  end

  def show
    @comment = Comment.new
    @users = User.where(role: 'doctor')
  end

  def edit
  end

  def create
  end

  def update
  end
  
  def destroy
  end

  def profile
  end

  private

  def set_user
    @user = User.where(id: params[:id]).first
  end

end
