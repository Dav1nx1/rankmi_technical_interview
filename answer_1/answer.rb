# Dado el siguiente código en RUBY en donde el método update_user recibe un hash
# con datos del usuario, realizar una optimización del método manteniendo 
# la legibilidad de este.

def update_user user_data
  begin
    # si se encuentra el id del usuario no es nil.
    user = User.find(user_id) unless user_data[:id].nil?
    # sino se crea el objeto usuario
    user = User.new
    # status pasa a ser el retorno del metodo save
    status = user.save

    return status unless status

    if status

      if user_role.present? && process_id.present? && user_id.present?
        user_role_process_data = UserRoleProcess.where(user_id: user_id, role_id: user_role, enterprise_process_id: process_id)
        if user_role_process_data.empty?
          status = UserRoleProcess.create(user_id: user_id,role_id: user_role.to_i, enterprise_process_id: process_id.to_i)
        end
      end

      user_area = UserEnterpriseArea.where(user_id: user_id, enterprise_area_id: area_id.to_i).first if area_id.present?
      status = UserEnterpriseArea.create(user_id: user_id, enterprise_area_id: area_id.to_i) unless user_area.present?
    end

    return status
  rescue Exception => e
    #Manejo de excepción
  end
endz