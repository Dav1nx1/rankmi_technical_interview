module V1
  class AreaController < ApplicationController
    def index
      parent = Area.includes(:children).find_by(parent_id: nil)
      respond parent.to_json_output, 200
    end

    def create
      binding.pry
    end

    private

    def area_params
      params.require(:area).permit!
    end
  end
end
