require 'test_helper'

class TracksControllerTest < ActionController::TestCase
  setup do
    @track = tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create track" do
    assert_difference('Track.count') do
      post :create, track: { category_id: @track.category_id, description: @track.description, embed_code: @track.embed_code, event_date: @track.event_date, event_location: @track.event_location, event_name: @track.event_name, time_end: @track.time_end, time_start: @track.time_start, title: @track.title, user_id: @track.user_id }
    end

    assert_redirected_to track_path(assigns(:track))
  end

  test "should show track" do
    get :show, id: @track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @track
    assert_response :success
  end

  test "should update track" do
    patch :update, id: @track, track: { category_id: @track.category_id, description: @track.description, embed_code: @track.embed_code, event_date: @track.event_date, event_location: @track.event_location, event_name: @track.event_name, time_end: @track.time_end, time_start: @track.time_start, title: @track.title, user_id: @track.user_id }
    assert_redirected_to track_path(assigns(:track))
  end

  test "should destroy track" do
    assert_difference('Track.count', -1) do
      delete :destroy, id: @track
    end

    assert_redirected_to tracks_path
  end
end
