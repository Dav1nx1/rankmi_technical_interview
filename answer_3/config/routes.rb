Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1, :defaults => {:format => :json} do
    get '/area', to: 'area#index'
    post '/area/create', to: 'area#create'
    post '/area/qualify', to: 'area#qualify'
  end
end
