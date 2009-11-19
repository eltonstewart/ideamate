class User < ActiveRecord::Base
  has_many :ideas
  
  acts_as_authentic
  
  validates_presence_of :login, :first_name, :email
end
