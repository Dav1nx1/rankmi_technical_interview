module V1
  # controlador, para el manejo de las areas. pregunta 3
  # creado por oscar corcho, para rankmi tech interview
  class AreaController < ApplicationController
    # api endpoints
    # get '/area', to: 'area#index'
    # post '/area/create', to: 'area#create'
    # post '/area/qualify', to: 'area#qualify'
    def index
      # controla la respuesta del index, ofrece la lista de arbol de las areas
      parent = Area.includes(:children).find_by(parent_id: nil)
      respond parent.to_json_output, 200
    end

    def create
      # permite agregar una nueva area, no es dependiente si tiene un padre o no
      @area = Area.new area_params
      respond @area, 200 if @area.save
      respond nil, 500
    end

    def qualify
      # permite editar notas de las areas
      @area = Area.find(area_params[:id])
      return respond @area, 200 if @area.update(area_params)
      respond nil, 500
    end

    private

    def area_params
      # Validacion de parametros
      params.require(:area).permit!
    end
  end
end
