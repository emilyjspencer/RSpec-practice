# mimic or mock a real life object

RSpec.describe 'friends' do
  it 'can return multiple return values in sequence' do
   array = ["Phoebe", "Monica", "Rachel", "Chandler", "Joey", "Ross"]
   mock_array = double
   allow(mock_array).to receive(:pop).and_return("Ross", "Joey", "Chandler", "Rachel", "Monica", "Phoebe", nil)
   expect(mock_array.pop).to eq("Ross")
   expect(mock_array.pop).to eq("Joey")
   expect(mock_array.pop).to eq("Chandler")
   expect(mock_array.pop).to eq("Rachel")
   expect(mock_array.pop).to eq("Monica")
   expect(mock_array.pop).to eq("Phoebe")
   expect(mock_array.pop).to be_nil 
  end
end 