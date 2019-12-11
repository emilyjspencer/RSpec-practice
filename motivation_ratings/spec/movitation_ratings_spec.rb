require 'motivation_ratings' 

describe MotivationRatings do


    it 'initializes with an empty array' do
        expect(subject.ratings).to eq []  
    end 
 

    describe '#add_motivation' do

      it { is_expected.to respond_to(:add_motivation_rating).with(1).argument }

      it 'the add_motivation method adds a rating to the ratings array' do
        subject.add_motivation_rating(5)
        expect(subject.ratings).to include(5)
      end
    end 

    describe '#remove_motivation' do
      it {is_expected.to respond_to(:remove_motivation_rating).with(1).argument }
      
      it 'the remove_motivation method removes a rating from the ratings array' do
        subject.remove_motivation_rating(5)
        expect(subject.ratings).to be_empty
      end

      it 'the remove_motivation method removes a rating from the ratings array if there is more than one rating in array' do
        subject.add_motivation_rating(10)
        subject.add_motivation_rating(8)
        subject.add_motivation_rating(7)
        subject.remove_motivation_rating(7)
        expect(subject.ratings).to eq [10, 8]
      end 
        
    
    end 

end 