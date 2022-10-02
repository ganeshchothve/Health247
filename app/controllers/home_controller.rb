class HomeController < ApplicationController

  def index
    @users = User.where(role: 'doctor')
  end
end
