require 'test_helper'

class GamePlaysControllerTest < ActionController::TestCase
  setup do
    @game_play = game_plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_play" do
    assert_difference('GamePlay.count') do
      post :create, game_play: { case_id: @game_play.case_id, level: @game_play.level, score: @game_play.score, user_id: @game_play.user_id, xp: @game_play.xp }
    end

    assert_redirected_to game_play_path(assigns(:game_play))
  end

  test "should show game_play" do
    get :show, id: @game_play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_play
    assert_response :success
  end

  test "should update game_play" do
    put :update, id: @game_play, game_play: { case_id: @game_play.case_id, level: @game_play.level, score: @game_play.score, user_id: @game_play.user_id, xp: @game_play.xp }
    assert_redirected_to game_play_path(assigns(:game_play))
  end

  test "should destroy game_play" do
    assert_difference('GamePlay.count', -1) do
      delete :destroy, id: @game_play
    end

    assert_redirected_to game_plays_path
  end
end
