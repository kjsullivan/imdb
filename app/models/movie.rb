class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year
  
  # validates :title, :presence => true, :uniqueness => true
  
  validate :no_duplicate_movie_and_director
  
  belongs_to :director
  has_many :roles
  
  has_many :actors, :through => :roles
  has_many :votes
  
  def no_duplicate_movie_and_director
    if Movie.where(:title => self.title, :director_id => self.director_id).present?
      errors.add(:base, "This movie already exists.")
    end
  end
end
