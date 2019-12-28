require_relative 'actor'

class Movie
  attr_reader :actor  # makes it publicly accessible 

  def initialize(actor)
    @actor = actor 
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.act2
      actor.jump_out_of_fake_window
    end
  end
end

actor = Actor.new("Angelina Jolie")
movie = Movie.new(actor)
puts movie.start_shooting