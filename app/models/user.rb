class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  validates :email, :presence => true, :uniqueness => true
  
  has_many :votes
  has_many :movies, :through => :votes
end
