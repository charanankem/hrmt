class ZensarkController < ApplicationController
  before_action :check_route
  def home
    @attendances = Attendance.where("login > ? AND logout < ?", Date.today-7, Date.today-1)
  end

  def check_route 
    if current_employee 
       zensark_path
    else  
      redirect_to root_path
    end
  end
end
