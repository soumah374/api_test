Rails.application.routes.draw do

  get '/', to: 'geolocalisation#index', as: 'api_index'
  resources :geolocalisation
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :geolocalisations
      post 'geolocalisations/create', to: 'geolocalisations#create', as: 'create_geolocalisation'

    end
  end

end
