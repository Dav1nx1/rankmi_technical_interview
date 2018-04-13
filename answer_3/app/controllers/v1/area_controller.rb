module V1
  class AreaController < ApplicationController

    def index
      parent = Area.includes(:children).find_by(parent_id: nil)
      respond parent.to_json_output, 200
    end

    def create
      @area = Area.new area_params
      @area.save
      respond @area, 200
    end

    def qualify
      @area = Area.find(params[:id])
      @area.update(nota: params[:nota])
      respond @area, 200
    end

    private

    def area_params
      params.require(:area).permit!
    end
  end
end
