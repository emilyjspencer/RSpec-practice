require 'ratings'

describe Ratings do
  it 'rates a movie' do
    movie = double("Annie Hall", :rating => 9)
    expect(subject.rate(movie)).to eq('This movie has a rating of 9')
  end
end