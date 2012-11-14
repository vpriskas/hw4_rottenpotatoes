require "spec_helper"

describe Movie do
  
it 'Factory girl use' do
movie = FactoryGirl.build(:movie, :title => 'Milk', :rating => 'R')
movie.title.should == 'Milk'
end

 it "has to find movies with the same director" do
    movie1 = FactoryGirl.create(:movie, :title => 'Milk', :rating => 'R', :director => 'Cameron')
    movie2 =   FactoryGirl.create(:movie, :title => 'Milk', :rating => 'R', :director => 'Johnes')
    movie3 = FactoryGirl.create(:movie, :title => 'Milk', :rating => 'R', :director => 'Cameron')
 #ovie = FactoryGirl.build(:movie, :title => ’Milk’, :rating => ’R’)
    Movie.find_director_movies('Cameron').should == [movie1,movie3]
 end

end

 
