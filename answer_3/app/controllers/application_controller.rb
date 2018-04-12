class ApplicationController < ActionController::API

  def respond data, status
    return render json: data, status: status unless data.nil?

    render json: { status: 'error',
                     msg: 'Existe un error' }, status: status
  end
end
