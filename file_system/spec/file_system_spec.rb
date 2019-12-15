
RSpec.describe 'file system' do
  it 'allows a double to work with methods' do
    file_system = double("file system")
    allow(file_system).to receive(:read).and_return "Romeo and Juliet"
    allow(file_system).to receive(:write).and_return false
    expect(file_system.write).to eq false
    expect(file_system.read).to eq "Romeo and Juliet"
  end
end 
