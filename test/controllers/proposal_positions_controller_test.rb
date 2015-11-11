require 'test_helper'

class ProposalPositionsControllerTest < ActionController::TestCase
  setup do
    @proposal_position = proposal_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposal_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal_position" do
    assert_difference('ProposalPosition.count') do
      post :create, proposal_position: { change_marker: @proposal_position.change_marker, price: @proposal_position.price, price_item_id: @proposal_position.price_item_id, proposal_id: @proposal_position.proposal_id, template_position_id: @proposal_position.template_position_id }
    end

    assert_redirected_to proposal_position_path(assigns(:proposal_position))
  end

  test "should show proposal_position" do
    get :show, id: @proposal_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal_position
    assert_response :success
  end

  test "should update proposal_position" do
    patch :update, id: @proposal_position, proposal_position: { change_marker: @proposal_position.change_marker, price: @proposal_position.price, price_item_id: @proposal_position.price_item_id, proposal_id: @proposal_position.proposal_id, template_position_id: @proposal_position.template_position_id }
    assert_redirected_to proposal_position_path(assigns(:proposal_position))
  end

  test "should destroy proposal_position" do
    assert_difference('ProposalPosition.count', -1) do
      delete :destroy, id: @proposal_position
    end

    assert_redirected_to proposal_positions_path
  end
end
