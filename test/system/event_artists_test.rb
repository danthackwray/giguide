require "application_system_test_case"

class EventArtistsTest < ApplicationSystemTestCase
  setup do
    @event_artist = event_artists(:one)
  end

  test "visiting the index" do
    visit event_artists_url
    assert_selector "h1", text: "Event artists"
  end

  test "should create event artist" do
    visit event_artists_url
    click_on "New event artist"

    fill_in "Artist", with: @event_artist.artist_id
    fill_in "Event", with: @event_artist.event_id
    click_on "Create Event artist"

    assert_text "Event artist was successfully created"
    click_on "Back"
  end

  test "should update Event artist" do
    visit event_artist_url(@event_artist)
    click_on "Edit this event artist", match: :first

    fill_in "Artist", with: @event_artist.artist_id
    fill_in "Event", with: @event_artist.event_id
    click_on "Update Event artist"

    assert_text "Event artist was successfully updated"
    click_on "Back"
  end

  test "should destroy Event artist" do
    visit event_artist_url(@event_artist)
    click_on "Destroy this event artist", match: :first

    assert_text "Event artist was successfully destroyed"
  end
end
