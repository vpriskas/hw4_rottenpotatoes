require 'spec_helper'

describe MoviesController do
 describe 'find movies with the same director' do

	before(:each) do
 	     @movie = mock_model(Movie, :id =>1, :title => "Alien", :director => "Riddley Scott")
	    
    end
  it "should call the model method that performs the search for same director movies" do
	Movie.stub(:find).and_return(@movie)
	Movie.should_receive(:find_director_movies).with("Riddley Scott")
	post :directed, {:id => "2"}
  end


  it "should select the directed template for rendering" do
	Movie.stub(:find).and_return(@movie)	
	Movie.stub(:find_director_movies).and_return(["1","2"])
	post :directed, {:id => "1"}
	response.should render_template('directed')

  end

  it "should select the index template for rendering when there are no movies" do
	Movie.stub(:find).and_return(@movie)	
	Movie.stub(:find_director_movies).and_return(nil)
	post :directed, {:id => "1"}
	response.should redirect_to movies_path

  end

 end


end
