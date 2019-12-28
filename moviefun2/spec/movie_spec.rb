require 'movie'

describe Movie do
  let(:stuntdouble) { double("Anglina Jolie", ready?: true, act: "Wobble", act2: "Cry me a river", jump_out_of_fake_window: "splat") }
  subject { described_class.new(stuntdouble) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 things' do
      expect(stuntdouble).to receive(:ready?)
      expect(stuntdouble).to receive(:act).at_most(3).times # up to and including 3 times 
      expect(stuntdouble).to receive(:act2).exactly(1).times # same as below
      expect(stuntdouble).to receive(:jump_out_of_fake_window).once # if the double receive this method more than once - the spec will fail 
      subject.start_shooting
    end 
  end 
end

#at_least
# expect(stuntdouble).to receive(:act2).at_least(2).times 