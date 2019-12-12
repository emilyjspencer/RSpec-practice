require 'roman_numeral'

describe RomanNumeral do

    #it {is_expected.to respond_to(:convert).with(1).argument }

    it 'takes in 1 and returns I' do
       expect(subject.convert(1)).to eq 'I'
    end

    it 'takes in 2 and returns II' do
        expect(subject.convert(2)).to eq 'II'
    end 

    it 'takes in 5 and returns V' do
        expect(subject.convert(5)).to eq 'V'
    end 


    it 'takes in 10 and returns X' do
        expect(subject.convert(10)).to eq 'X'
    end 
    
    it 'takes in anything other than the numbers 1 - 10 and returns nil' do
        expect(subject.convert(0)).to eq nil
    end
end



