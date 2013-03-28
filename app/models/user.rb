class User < ActiveRecord::Base
  attr_protected :created_at, :updated_at
  has_secure_password

  belongs_to :rol, :polymorphic => true

  before_save :create_remember_token
  
  def self.find_fb_user(fb_user)
    User.find(:first, :conditions => ['facebook_id = ? or email = ?',539635387,'asd'])
  end 

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
