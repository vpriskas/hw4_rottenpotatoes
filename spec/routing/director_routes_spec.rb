require "spec_helper"

describe "roots for directors" do

it "routes movies/directed_by/ to director controller" do
get("/movies/directed_by/1").
      should route_to(:controller => "movies", :action => "directed", :id =>"1")
end
end

