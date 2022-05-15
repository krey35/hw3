class PlacesController < ApplicationController
    #GET action to read a list of all places (HTTP GET Method) Path /places
    # reads from index.html.erb
    def index
        @places = Place.all 
    end
    #SHOW action to read info of a single place (HTTP GET Method) Path /places/abc
    #reads from show.html.erb
    def show
        @place = Place.find_by({ "id" => params["id"] })
    end 
end
