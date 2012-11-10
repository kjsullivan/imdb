class Actor < ActiveRecord::Base
  attr_accessible :dob, :hometown, :name, :photo_url
  
  has_many :roles
  has_many :movies, :through => :roles
end
