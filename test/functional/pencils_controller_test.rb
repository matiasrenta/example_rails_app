require 'test_helper'

class PencilsControllerTest < ActionController::TestCase
  setup do
    @pencil = pencils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pencils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pencil" do
    assert_difference('Pencil.count') do
      post :create, pencil: { name: @pencil.name }
    end

    assert_redirected_to pencil_path(assigns(:pencil))
  end

  test "should show pencil" do
    get :show, id: @pencil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pencil
    assert_response :success
  end

  test "should update pencil" do
    put :update, id: @pencil, pencil: { name: @pencil.name }
    assert_redirected_to pencil_path(assigns(:pencil))
  end

  test "should destroy pencil" do
    assert_difference('Pencil.count', -1) do
      delete :destroy, id: @pencil
    end

    assert_redirected_to pencils_path
  end
end
