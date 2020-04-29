class GeolocalisationController < ApplicationController

    def index
        @geolocalisations = Geolocalisation.all
        respond_to do |format|
            format.html
        end
         
    end
         

end
