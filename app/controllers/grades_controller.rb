class GradesController < ApplicationController
  before_filter :teacher_required

  protected
  
  def teacher_required
    redirect_to root unless current_user.class.name == "Teacher"
  end
end
