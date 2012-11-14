Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)

  end
  #flunk "Unimplemented"
end

Then /^the director of "Alien" should be "Ridley Scott"$/ do 
  #pending # express the regexp above with the code you wish you had
  @movie = Movie.find_by_id(3)
  assert @movie.director == "Ridley Scott"
end



