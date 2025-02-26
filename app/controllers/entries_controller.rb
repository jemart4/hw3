class EntriesController < ApplicationController


 
  def new
    # render entry/new view with new post form
  end

  def create
    # start with a new Contact
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    

    # assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]

    # save Wnrey row
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end



end
