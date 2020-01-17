class OccupiedRoomsController < ApplicationController
  before_action :set_occupied_room, only: [:show, :edit, :update, :destroy]

  # GET /occupied_rooms
  # GET /occupied_rooms.json
  def index
    @occupied_rooms = OccupiedRoom.all
  end

  # GET /occupied_rooms/1
  # GET /occupied_rooms/1.json
  def show
  end

  # GET /occupied_rooms/new
  def new
    @occupied_room = OccupiedRoom.new
  end

  # GET /occupied_rooms/1/edit
  def edit
  end

  # POST /occupied_rooms
  # POST /occupied_rooms.json
  def create
    @occupied_room = OccupiedRoom.new(occupied_room_params)

    respond_to do |format|
      if @occupied_room.save
        format.html { redirect_to @occupied_room, notice: 'Occupied room was successfully created.' }
        format.json { render :show, status: :created, location: @occupied_room }
      else
        format.html { render :new }
        format.json { render json: @occupied_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occupied_rooms/1
  # PATCH/PUT /occupied_rooms/1.json
  def update
    respond_to do |format|
      if @occupied_room.update(occupied_room_params)
        format.html { redirect_to @occupied_room, notice: 'Occupied room was successfully updated.' }
        format.json { render :show, status: :ok, location: @occupied_room }
      else
        format.html { render :edit }
        format.json { render json: @occupied_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupied_rooms/1
  # DELETE /occupied_rooms/1.json
  def destroy
    @occupied_room.destroy
    respond_to do |format|
      format.html { redirect_to occupied_rooms_url, notice: 'Occupied room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occupied_room
      @occupied_room = OccupiedRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def occupied_room_params
      params.require(:occupied_room).permit(:check_in, :check_out, :room_id, :reservation_id)
    end
end
