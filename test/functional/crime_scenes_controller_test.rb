require 'test_helper'

class CrimeScenesControllerTest < ActionController::TestCase
  setup do
    @crime_scene = crime_scenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crime_scenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crime_scene" do
    assert_difference('CrimeScene.count') do
      post :create, crime_scene: { crime_scene_img: @crime_scene.crime_scene_img, description: @crime_scene.description, name: @crime_scene.name }
    end

    assert_redirected_to crime_scene_path(assigns(:crime_scene))
  end

  test "should show crime_scene" do
    get :show, id: @crime_scene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crime_scene
    assert_response :success
  end

  test "should update crime_scene" do
    put :update, id: @crime_scene, crime_scene: { crime_scene_img: @crime_scene.crime_scene_img, description: @crime_scene.description, name: @crime_scene.name }
    assert_redirected_to crime_scene_path(assigns(:crime_scene))
  end

  test "should destroy crime_scene" do
    assert_difference('CrimeScene.count', -1) do
      delete :destroy, id: @crime_scene
    end

    assert_redirected_to crime_scenes_path
  end
end
