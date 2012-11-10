class Vote < ActiveRecord::Base
  attr_accessible :movie_id, :user_id
  
  belongs_to :user
  belongs_to :movie
  validate :no_same_movie_twice
  validate :only_three_votes_per_user
  
  def no_same_movie_twice
    if Vote.where(:user_id => self.user_id, :movie_id => self.movie_id).present?
      errors.add(:base, "You can't vote for the same movie twice!")
    end
  end
  
  def only_three_votes_per_user
    if user.votes.count > 2
      errors.add(:base, "You have reached the max number of votes.")
    end
  end
      
  
end
