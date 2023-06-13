require "test_helper"

class EventArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_artist = event_artists(:one)
  end

  test "should get index" do
    get event_artists_url
    assert_response :success
  end

  test "should get new" do
    get new_event_artist_url
    assert_response :success
  end

  test "should create event_artist" do
    assert_difference("EventArtist.count") do
      post event_artists_url, params: { event_artist: { artist_id: @event_artist.artist_id, event_id: @event_artist.event_id } }
    end

    assert_redirected_to event_artist_url(EventArtist.last)
  end

  test "should show event_artist" do
    get event_artist_url(@event_artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_artist_url(@event_artist)
    assert_response :success
  end

  test "should update event_artist" do
    patch event_artist_url(@event_artist), params: { event_artist: { artist_id: @event_artist.artist_id, event_id: @event_artist.event_id } }
    assert_redirected_to event_artist_url(@event_artist)
  end

  test "should destroy event_artist" do
    assert_difference("EventArtist.count", -1) do
      delete event_artist_url(@event_artist)
    end

    assert_redirected_to event_artists_url
  end
end
