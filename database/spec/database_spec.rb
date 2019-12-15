RSpec.describe 'doubles' do
  it "allows a double to work with methods" do
 
   database_connection = double("Database Connection", connect: true, disconnect: "Goodbye")
   database_connection.connect
   database_connection.disconnect
   expect(database_connection.connect).to eq true
   expect(database_connection.disconnect).to eq "Goodbye"
  end

  
end