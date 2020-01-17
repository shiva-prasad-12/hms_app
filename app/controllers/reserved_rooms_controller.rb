class ReservedRoomsController < ApplicationController
  before_action :set_reserved_room, only: [:show, :edit, :update, :destroy]

  # GET /reserved_rooms
  # GET /reserved_rooms.json
  def index
    @reserved_rooms = ReservedRoom.all
  end

  # GET /reserved_rooms/1
  # GET /reserved_rooms/1.json
  def show
  end

  # GET /reserved_rooms/new
  def new
    @reserved_room = ReservedRoom.new
  end

  # GET /reserved_rooms/1/edit
  def edit
  end

  # POST /reserved_rooms
  # POST /reserved_rooms.json
  def create
    @reserved_room = ReservedRoom.new(reserved_room_params)

    respond_to do |format|
      if @reserved_room.save
        format.html { redirect_to @reserved_room, notice: 'Reserved room was successfully created.' }
        format.json { render :show, status: :created, location: @reserved_room }
      else
        format.html { render :new }
        format.json { render json: @reserved_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserved_rooms/1
  # PATCH/PUT /reserved_rooms/1.json
  def update
    respond_to do |format|
      if @reserved_room.update(reserved_room_params)
        format.html { redirect_to @reserved_room, notice: 'Reserved room was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserved_room }
      else
        format.html { render :edit }
        format.json { render json: @reserved_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserved_rooms/1
  # DELETE /reserved_rooms/1.json
  def destroy
    @reserved_room.destroy
    respond_to do |format|
      format.html { redirect_to reserved_rooms_url, notice: 'Reserved room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserved_room
      @reserved_room = ReservedRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserved_room_params
      params.require(:reserved_room).permit(:number_of_rooms, :roomtype_id, :reservation_id, :status)
    end
end
