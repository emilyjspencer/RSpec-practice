RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stunt_double = double("Angelina Jolie", fly_through_air: "Whooosh", scale_building: "Awesome") # create a double of Angelina Jolie called stunt_double
    stunt_double.fly_through_air # and allow the double to respond to the method and return "Whoooosh"
    stunt_double.scale_building # # and the method scale_building 
    expect(stunt_double.fly_through_air).to eq "Whooosh"
    expect(stunt_double.scale_building).to eq "Awesome"
  end  
end 

# The above test is more set in stone. Stubbing at the point of creation 

#=>

# Our test now passes because the double knows how to respond to the fly_through_air and scale_building methods 
# The above example uses the shorthand syntax
# We could also write the test in the following way:

RSpec.describe ' a random double' do
  it 'only allows defined methods to be invoked' do
    stunt_double = double("Angelina Jolie")
    allow(stunt_double).to receive_messages(fly_through_air: "Whooosh", scale_building: "Awesome")
    stunt_double.fly_through_air
    stunt_double.scale_building
    expect(stunt_double.scale_building).to eq "Awesome"
    expect(stunt_double.fly_through_air).to eq "Whooosh"
  end
end 

RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stunt_double = double("Angelina Jolie")
    allow(stunt_double).to receive(:fly_through_air).and_return "Whoooosh"
    allow(stunt_double).to receive(:scale_building).and_return "Awesome"
    expect(stunt_double.fly_through_air).to eq "Whoooosh"
    expect(stunt_double.scale_building).to eq "Awesome"
  end
end 

# The other alternative is this = very similar to above:

RSpec.describe 'a random double' do
  it 'only allows defined methods to be invokved' do
    stunt_double = double("Angelina Jolie")
    allow(stunt_double).to receive(:fly_through_air) { "Whoooosh"}
    allow(stunt_double).to receive(:scale_building) { "Awesome"}
    expect(stunt_double.fly_through_air).to eq "Whoooosh"
    expect(stunt_double.scale_building).to eq "Awesome"
  end
end 

