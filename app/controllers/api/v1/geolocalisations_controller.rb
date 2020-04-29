class Api::V1::GeolocalisationsController < ApplicationController

    def index

        @array_geolocalisation = []
        Geolocalisation.all.each do |geolocalisation|
              @array_geolocalisation.push({
                  :id => Geolocalisation.all.index(geolocalisation) + 1,
                  :annee => geolocalisation.annee, 
                  :projet => geolocalisation.projet, 
                  :date_debut => geolocalisation.date_debut, 
                  :date_fin => geolocalisation.date_fin
              })
        end
        render json: {status: 'SUCCESS', message:"loaded geolocalisation", data: @array_geolocalisation}, status: :ok
    end

    def create
        @receive_data = JSON.parse(params[:geolocalisationRequest])

        @geolocalisation = Geolocalisation.create(annee: @receive_data["annee"], projet: @receive_data["projet"], date_debut: @receive_data["date_debut"], date_fin: @receive_data["date_fin"])

        puts  @receive_data
       
    end
    

    

end
