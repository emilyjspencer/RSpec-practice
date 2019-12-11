require 'motivation_ratings' 

describe MotivationRatings do


    it 'initializes with an empty array' do
        expect(subject.ratings).to eq []  
    end 

    it { is_expected.to respond_to(:add_motivation_rating).with(1).argument } 

    describe '#add_motivation' do
      it 'the add_motivation method to the ratings array' do
        subject.add_motivation_rating(5)
        expect(subject.ratings).to include(5)
      end
    end 
    
    end 