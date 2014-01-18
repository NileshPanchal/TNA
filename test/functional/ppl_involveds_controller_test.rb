require 'test_helper'

class PplInvolvedsControllerTest < ActionController::TestCase
  setup do
    @ppl_involved = ppl_involveds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ppl_involveds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ppl_involved" do
    assert_difference('PplInvolved.count') do
      post :create, ppl_involved: { avtar_img: @ppl_involved.avtar_img, cost: @ppl_involved.cost, description: @ppl_involved.description, name: @ppl_involved.name, score: @ppl_involved.score, statement: @ppl_involved.statement, type: @ppl_involved.type, xp: @ppl_involved.xp }
    end

    assert_redirected_to ppl_involved_path(assigns(:ppl_involved))
  end

  test "should show ppl_involved" do
    get :show, id: @ppl_involved
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ppl_involved
    assert_response :success
  end

  test "should update ppl_involved" do
    put :update, id: @ppl_involved, ppl_involved: { avtar_img: @ppl_involved.avtar_img, cost: @ppl_involved.cost, description: @ppl_involved.description, name: @ppl_involved.name, score: @ppl_involved.score, statement: @ppl_involved.statement, type: @ppl_involved.type, xp: @ppl_involved.xp }
    assert_redirected_to ppl_involved_path(assigns(:ppl_involved))
  end

  test "should destroy ppl_involved" do
    assert_difference('PplInvolved.count', -1) do
      delete :destroy, id: @ppl_involved
    end

    assert_redirected_to ppl_involveds_path
  end
end
