
class MotivationRatings
  attr_reader :ratings  

  def initialize
    @ratings = []
  end 

  def add_motivation_rating(rating)
    @ratings.push(rating)
  end 

  def remove_motivation_rating(rating)
    @ratings.delete(rating)
  end 

  def calculate_average_rating
  end 

 

end 