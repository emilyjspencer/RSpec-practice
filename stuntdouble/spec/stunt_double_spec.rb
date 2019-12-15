RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stunt_double = double("Angelina Jolie") # create a double of Angelina Jolie called stunt_double
    stunt_double.fly_through_air # try to call a fly_through_air() method on our student double
  end  # as seen below - we get an error message - ' received unexpected message :fly_through_air with'
end # no args  - this is because our double  - stunt_double doesn't know how to respond to this method

#=>

# 1) a random double only allows defined methods to be invoked
# Failure/Error: stunt_double.fly_through_air
#<Double "Angelina Jolie"> received unexpected message :fly_through_air with (no args)
# ./spec/stunt_double_spec.rb:4:in `block (2 levels) in <top (required)>'