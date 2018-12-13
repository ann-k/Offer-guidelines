require 'test_helper'

class PublicTalksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_talk = public_talks(:one)
  end

  test "should get index" do
    get public_talks_url
    assert_response :success
  end

  test "should get new" do
    get new_public_talk_url
    assert_response :success
  end

  test "should create public_talk" do
    assert_difference('PublicTalk.count') do
      post public_talks_url, params: { public_talk: { public_talk_date: @public_talk.public_talk_date, speaker: @public_talk.speaker, speaker_contacts: @public_talk.speaker_contacts, theme: @public_talk.theme } }
    end

    assert_redirected_to public_talk_url(PublicTalk.last)
  end

  test "should show public_talk" do
    get public_talk_url(@public_talk)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_talk_url(@public_talk)
    assert_response :success
  end

  test "should update public_talk" do
    patch public_talk_url(@public_talk), params: { public_talk: { public_talk_date: @public_talk.public_talk_date, speaker: @public_talk.speaker, speaker_contacts: @public_talk.speaker_contacts, theme: @public_talk.theme } }
    assert_redirected_to public_talk_url(@public_talk)
  end

  test "should destroy public_talk" do
    assert_difference('PublicTalk.count', -1) do
      delete public_talk_url(@public_talk)
    end

    assert_redirected_to public_talks_url
  end
end
