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
      if user.rol_type.blank? || user.rol_id.blank?
        redirect_to new_student_path(:first => fb_user['first_name'], :last => fb_user['last_name'])
        return false
      end 
    else
      flash.now[:notice] = "Facebook error try again" 
    end   
    render :template => "home/index" 
  end
end