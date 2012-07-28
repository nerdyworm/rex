require 'test_helper'

class DinosControllerTest < ActionController::TestCase
  setup do
    @dino = dinos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dino" do
    assert_difference('Dino.count') do
      post :create, dino: { content: @dino.content, name: @dino.name }
    end

    assert_redirected_to dino_path(assigns(:dino))
  end

  test "should show dino" do
    get :show, id: @dino
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dino
    assert_response :success
  end

  test "should update dino" do
    put :update, id: @dino, dino: { content: @dino.content, name: @dino.name }
    assert_redirected_to dino_path(assigns(:dino))
  end

  test "should destroy dino" do
    assert_difference('Dino.count', -1) do
      delete :destroy, id: @dino
    end

    assert_redirected_to dinos_path
  end
end
