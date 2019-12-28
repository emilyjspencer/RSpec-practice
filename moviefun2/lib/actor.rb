

class Actor 
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act 
    puts "Why did you leave me?"
  end

  def forget_lines
   puts  "Argh, what was the line?"
  end

  def act2
    puts "I can't live without you"
  end 

  def jump_out_of_fake_window
    "Actor jumps out of fake window onto mats"
  end 
end