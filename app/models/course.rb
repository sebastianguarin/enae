class Course < ActiveRecord::Base
  attr_protected :created_at, :updated_at

  has_many :signatures
  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
end
