class UsuariosController < ApplicationController
    before_action :set_usuario


    def show
      #code
    end

    def update
      #code
    end

    private
        def set_usuario
            @user = Nurse.find(params[:id])
        end

        def usuario_params
			params.require(:nurse).permit(:availability)
		end
end
