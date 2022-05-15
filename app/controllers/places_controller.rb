class PlacesController < ApplicationController
    #INDEX action to read a list of all places (HTTP GET Method) Path /places
    # reads from index.html.erb
    def index
        @places = Place.all 
    end
    #SHOW action to read info of a single place (HTTP GET Method) Path /places/abc
    #reads from show.html.erb
    def show
        @place = Place.find_by({ "id" => params["id"] })
    end 
    #NEW action (a form) to create a new place (HTTP GET Method) Path /places/new
    #
    def new
        @place = Place.new
    end
    #CREATE action to receive the info from the "new" form and create a new place
    #(HTTP POST Method) Path /places - this action has no view file
    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place.save
        redirect_to "/places"
    end
end
