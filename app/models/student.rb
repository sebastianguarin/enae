class Student < ActiveRecord::Base
  attr_protected :created_at, :updated_at

  validates :name, :last_names, :course_id, :presence => true
  
  def full_name
    self.name + self.last_names 
  end
end
