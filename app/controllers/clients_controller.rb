class ClientsController < ApplicationController
    before_action :set_client, only:[:show]

    def index
      #code
      @clients = Client.all
    end

    def new
      #code
      @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        respond_to do |format|
            if @client.save
                format.html{redirect_to root_path, notice: 'Solicitud enviada con exito'}
            else
                format.html{render :new, notice: 'Error al enviar la solicitud'}
            end
        end
    end

    def show
      #code
    end

    private

        def client_params
          #code
          params.require(:client).permit(:name, :phone, :sex, :description, :day, :age, :work_hour)
          #name:string phone:integer sex:string description:string day:string age:integer work_hour:string
        end

        def set_client
          #code
          @client = Client.find(params[:id])
        end
end
