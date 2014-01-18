require 'test_helper'

class VictimsControllerTest < ActionController::TestCase
  setup do
    @victim = victims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:victims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create victim" do
    assert_difference('Victim.count') do
      post :create, victim: { description: @victim.description, name: @victim.name, statement: @victim.statement, victim_img: @victim.victim_img }
    end

    assert_redirected_to victim_path(assigns(:victim))
  end

  test "should show victim" do
    get :show, id: @victim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @victim
    assert_response :success
  end

  test "should update victim" do
    put :update, id: @victim, victim: { description: @victim.description, name: @victim.name, statement: @victim.statement, victim_img: @victim.victim_img }
    assert_redirected_to victim_path(assigns(:victim))
  end

  test "should destroy victim" do
    assert_difference('Victim.count', -1) do
      delete :destroy, id: @victim
    end

    assert_redirected_to victims_path
  end
end
