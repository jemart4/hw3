class PlaceController < ApplicationController
def index

  # find all Places rows
  @places = Place.all 
  # render places/index view

end

def new
  # render a view with new places form
end

def create
  #   # start with a new Company
  @places = Place.new
  #   # assign user-entered form data to Company's columns
  @places["name"] = params["name"]
  
  #   # save Company row
  @places.save
  #   # redirect user
  redirect_to "/place"
  end

  def show
    # find a place
    @places = Place.find_by({"id" => params["id"]})
    
    # render place/show view with posts about place
  end

end
