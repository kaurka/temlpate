require 'test_helper'

class TemplatePositionsControllerTest < ActionController::TestCase
  setup do
    @template_position = template_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:template_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template_position" do
    assert_difference('TemplatePosition.count') do
      post :create, template_position: { order: @template_position.order, price_item_id: @template_position.price_item_id, template_id: @template_position.template_id, template_item_id: @template_position.template_item_id, title: @template_position.title }
    end

    assert_redirected_to template_position_path(assigns(:template_position))
  end

  test "should show template_position" do
    get :show, id: @template_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template_position
    assert_response :success
  end

  test "should update template_position" do
    patch :update, id: @template_position, template_position: { order: @template_position.order, price_item_id: @template_position.price_item_id, template_id: @template_position.template_id, template_item_id: @template_position.template_item_id, title: @template_position.title }
    assert_redirected_to template_position_path(assigns(:template_position))
  end

  test "should destroy template_position" do
    assert_difference('TemplatePosition.count', -1) do
      delete :destroy, id: @template_position
    end

    assert_redirected_to template_positions_path
  end
end
