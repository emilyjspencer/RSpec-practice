require 'movie'

describe Movie do
  let(:stuntdouble) { double("Anglina Jolie", ready?: true, act: "Wobble", act2: "Cry me a river", jump_out_of_fake_window: "splat") }
  subject { described_class.new(stuntdouble) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 things' do
      expect(stuntdouble).to receive(:ready?)
      expect(stuntdouble).to receive(:act)
      expect(stuntdouble).to receive(:act2)
      expect(stuntdouble).to receive(:jump_out_of_fake_window)
      subject.start_shooting
    end 
  end 
end
