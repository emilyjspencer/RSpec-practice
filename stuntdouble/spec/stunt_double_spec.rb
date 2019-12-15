RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stunt_double = double("Angelina Jolie", fly_through_air: "Whooosh") # create a double of Angelina Jolie called stunt_double
    stunt_double.fly_through_air # and allow the double to respond to the method and return "Whoooosh"
  end  
end 

#=>

# Our test now passes because the double knows how to respond to the fly_through_air method 

