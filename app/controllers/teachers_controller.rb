class TeachersController < ApplicationController
  before_filter :admin_required

  protected
  
  def admin_required
    redirect_to root unless current_user.class.name == "Admin"
  end
end
