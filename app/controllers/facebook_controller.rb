class FacebookController < ApplicationController
  def callback
    code = params[:code]
    if code
      token = @auth.get_access_token(code)
      fb_user = Koala::Facebook::GraphAPI.new(token).get_object("me")  
      user = User.find_fb_user(fb_user) #user already created 
      if user.present?   
        Facebook.update_user(user, fb_user, token)
      else #User doesnt exists
        user = Facebook.create_user(fb_user, token)
      end
      sign_in(user)
      if user.rol.course_id.blank?
        redirect_to edit_student_path(user)
        return false
      end    
    else
      flash.now[:notice] = "Facebook error try again" 
    end   
    redirect_to root_path  
  end
end