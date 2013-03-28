class Course < ActiveRecord::Base
  attr_protected :created_at, :updated_at

  has_many :signatures
  validate :name, :presence => true, :uniqueness => true
end
