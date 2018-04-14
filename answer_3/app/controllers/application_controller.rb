class ApplicationController < ActionController::API

  def respond data, status

    return render json: data, status: status unless data.nil?

    render json: { status: status,
                   msg: 'Existe un error, comunicate con un administrador' }
  end
end
