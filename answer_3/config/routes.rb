Rails.application.routes.draw do
  # rutas de controladores
  namespace :v1, defaults: { format: :json } do
    get '/area', to: 'area#index'
    post '/area/create', to: 'area#create'
    post '/area/qualify', to: 'area#qualify'
  end
end
