class Director < ActiveRecord::Base
  attr_accessible :dob, :name, :photo_url
  
  has_many :movies
  validates :name, :presence => true, :uniqueness => true
  
end
