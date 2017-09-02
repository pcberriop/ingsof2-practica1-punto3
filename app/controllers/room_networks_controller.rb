class RoomNetworksController < ApplicationController
  before_action :set_room_network, only: [:show, :update, :destroy]

  # GET /room_networks
  def index
    @room_networks = RoomNetwork.all

    render json: @room_networks
  end

  # GET /room_networks/1
  def show
    render json: @room_network
  end

  # POST /room_networks
  def create
    @room_network = RoomNetwork.new(room_network_params)

    if @room_network.save
      render json: @room_network, status: :created, location: @room_network
    else
      render json: @room_network.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /room_networks/1
  def update
    if @room_network.update(room_network_params)
      render json: @room_network
    else
      render json: @room_network.errors, status: :unprocessable_entity
    end
  end

  # DELETE /room_networks/1
  def destroy
    @room_network.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_network
      @room_network = RoomNetwork.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_network_params
      params.require(:room_network).permit(:name, :model, :code, :mandated)
    end
end
