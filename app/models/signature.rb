class Signature < ActiveRecord::Base
  attr_protected :created_at, :updated_at
  # attr_accessible :title, :body

  has_many :students, :through => :course
  belongs :course
end
