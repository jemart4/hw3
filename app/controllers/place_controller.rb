class PlaceController < ApplicationController
def index

  # find all Places rows
  @places = Place.all 
  # render places/index view

end

def new
  # render a view with new places form
end

end
