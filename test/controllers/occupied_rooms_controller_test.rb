require 'test_helper'

class OccupiedRoomsControllerTest < ActionController::TestCase
  setup do
    @occupied_room = occupied_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occupied_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occupied_room" do
    assert_difference('OccupiedRoom.count') do
      post :create, occupied_room: { check_in: @occupied_room.check_in, check_out: @occupied_room.check_out, reservation_id: @occupied_room.reservation_id, room_id: @occupied_room.room_id }
    end

    assert_redirected_to occupied_room_path(assigns(:occupied_room))
  end

  test "should show occupied_room" do
    get :show, id: @occupied_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @occupied_room
    assert_response :success
  end

  test "should update occupied_room" do
    patch :update, id: @occupied_room, occupied_room: { check_in: @occupied_room.check_in, check_out: @occupied_room.check_out, reservation_id: @occupied_room.reservation_id, room_id: @occupied_room.room_id }
    assert_redirected_to occupied_room_path(assigns(:occupied_room))
  end

  test "should destroy occupied_room" do
    assert_difference('OccupiedRoom.count', -1) do
      delete :destroy, id: @occupied_room
    end

    assert_redirected_to occupied_rooms_path
  end
end
