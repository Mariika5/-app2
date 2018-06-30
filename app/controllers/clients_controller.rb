class ClientsController < ApplicationController

  layout 'landing'
  
  # GET /clients/new
  def new
    @client = Client.new
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)
    
      if @client.save
        redirect_to root_path
      else
        render :new 
      end
  end

  private

    def client_params
      params.require(:client).permit(:name, :last_name, :email, :phone)
    end
end
