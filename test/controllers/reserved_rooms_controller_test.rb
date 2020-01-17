require 'test_helper'

class ReservedRoomsControllerTest < ActionController::TestCase
  setup do
    @reserved_room = reserved_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserved_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserved_room" do
    assert_difference('ReservedRoom.count') do
      post :create, reserved_room: { number_of_rooms: @reserved_room.number_of_rooms, reservation_id: @reserved_room.reservation_id, roomtype_id: @reserved_room.roomtype_id, status: @reserved_room.status }
    end

    assert_redirected_to reserved_room_path(assigns(:reserved_room))
  end

  test "should show reserved_room" do
    get :show, id: @reserved_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserved_room
    assert_response :success
  end

  test "should update reserved_room" do
    patch :update, id: @reserved_room, reserved_room: { number_of_rooms: @reserved_room.number_of_rooms, reservation_id: @reserved_room.reservation_id, roomtype_id: @reserved_room.roomtype_id, status: @reserved_room.status }
    assert_redirected_to reserved_room_path(assigns(:reserved_room))
  end

  test "should destroy reserved_room" do
    assert_difference('ReservedRoom.count', -1) do
      delete :destroy, id: @reserved_room
    end

    assert_redirected_to reserved_rooms_path
  end
end
