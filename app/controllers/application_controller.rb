class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper 
  
  before_filter :facebook_oauth

  def facebook_oauth
    @auth = Koala::Facebook::OAuth.new(574060449271274, "ee2514bc6250a4d91a27fba7c967ba88","http://localhost:3000/callback")
  end

  def admin_required
    redirect_to root unless current_user.class.name == "Admin"
  end

  def teacher_required
    redirect_to root unless current_user.class.name == "Teacher"
    @teacher = current_user.rol
  end
end
