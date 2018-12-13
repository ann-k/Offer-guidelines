require "application_system_test_case"

class PublicTalksTest < ApplicationSystemTestCase
  setup do
    @public_talk = public_talks(:one)
  end

  test "visiting the index" do
    visit public_talks_url
    assert_selector "h1", text: "Public Talks"
  end

  test "creating a Public talk" do
    visit public_talks_url
    click_on "New Public Talk"

    fill_in "Public Talk Date", with: @public_talk.public_talk_date
    fill_in "Speaker", with: @public_talk.speaker
    fill_in "Speaker Contacts", with: @public_talk.speaker_contacts
    fill_in "Theme", with: @public_talk.theme
    click_on "Create Public talk"

    assert_text "Public talk was successfully created"
    click_on "Back"
  end

  test "updating a Public talk" do
    visit public_talks_url
    click_on "Edit", match: :first

    fill_in "Public Talk Date", with: @public_talk.public_talk_date
    fill_in "Speaker", with: @public_talk.speaker
    fill_in "Speaker Contacts", with: @public_talk.speaker_contacts
    fill_in "Theme", with: @public_talk.theme
    click_on "Update Public talk"

    assert_text "Public talk was successfully updated"
    click_on "Back"
  end

  test "destroying a Public talk" do
    visit public_talks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Public talk was successfully destroyed"
  end
end
