require 'test_helper'

class HomeitemsControllerTest < ActionController::TestCase
  setup do
    @homeitem = homeitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homeitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homeitem" do
    assert_difference('Homeitem.count') do
      post :create, homeitem: { description: @homeitem.description, img1: @homeitem.img1, img2: @homeitem.img2, img3: @homeitem.img3, img4: @homeitem.img4, img5: @homeitem.img5, img6: @homeitem.img6, img7: @homeitem.img7, img8: @homeitem.img8, img9: @homeitem.img9, title: @homeitem.title }
    end

    assert_redirected_to homeitem_path(assigns(:homeitem))
  end

  test "should show homeitem" do
    get :show, id: @homeitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homeitem
    assert_response :success
  end

  test "should update homeitem" do
    patch :update, id: @homeitem, homeitem: { description: @homeitem.description, img1: @homeitem.img1, img2: @homeitem.img2, img3: @homeitem.img3, img4: @homeitem.img4, img5: @homeitem.img5, img6: @homeitem.img6, img7: @homeitem.img7, img8: @homeitem.img8, img9: @homeitem.img9, title: @homeitem.title }
    assert_redirected_to homeitem_path(assigns(:homeitem))
  end

  test "should destroy homeitem" do
    assert_difference('Homeitem.count', -1) do
      delete :destroy, id: @homeitem
    end

    assert_redirected_to homeitems_path
  end
end
