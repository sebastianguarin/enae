class Facebook

  FACEBOOK_DATA = YAML::load(ERB.new(File.read("#{RAILS_ROOT}/config/facebook.yml")).result)[Rails.env]
  
  APP_ID = FACEBOOK_DATA['app_id']
  APP_SECRET = FACEBOOK_DATA['secret_key']
  SITE_URL = FACEBOOK_DATA['url']

  def self.create_user(fb_user, access_token)
    student = Student.new(:name => fb_user['first_name'], :last_names => fb_user['last_name'])
    if student.save
      user = User.new(:login => fb_user['username'], :password => fb_user['username'], :email => fb_user['email'], :facebook_id => fb_user['id'], :access_token => access_token, :rol => student)
      user.save!
    end
    user
  end

  def self.update_user(user, fb_user, token)
    puts user.class
    user.access_token = token
    user.facebook_id = fb_user[:id]
    user.email = fb_user[:email]
    user.login = fb_user[:login]
    user.save
    user
  end
end