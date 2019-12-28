RSpec.describe 'stubbing methods' do  
  it 'can stub one the sum method' do
    array = [1, 2, 3]
    allow(array).to receive(:sum).and_return 10 # in reality this should be 6 
    expect(array.sum).to eq 10
  end

  it 'can stub the length method' do
    array = [4, 5, 6]
    allow(array).to receive(:length).and_return 20 # in reality this should be 3 
    expect(array.length).to eq 20
  end 

  it 'adds an element to the end of the array' do
    array = [4, 5, 6]
    array.push(7)
    expect(array).to eq [4, 5, 6, 7]  # we don't falsify this method 
  end 

end 
