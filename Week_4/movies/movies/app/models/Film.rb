class Film < ActiveRecord::Base
  #The following line was by David
  attr_accessible :title, :year, :plot, :mpaa_rating, :user_rating
  #since there is only one table, we don't need to put anything here. If we had multiple we could write belongs_to_many
end