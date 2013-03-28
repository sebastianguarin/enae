class TeachersController < ApplicationController
  before_filter :admin_required

  def index
    
  end

  protected
  
  def admin_required
    redirect_to root unless current_user.class.name == "Admin"
  end

  def teacher_required
    
  end
end
