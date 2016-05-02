require 'test_helper'

class PengembaliansControllerTest < ActionController::TestCase
  setup do
    @pengembalian = pengembalians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pengembalians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pengembalian" do
    assert_difference('Pengembalian.count') do
      post :create, pengembalian: { denda: @pengembalian.denda, keterangan: @pengembalian.keterangan, telat: @pengembalian.telat, transaksi_id: @pengembalian.transaksi_id }
    end

    assert_redirected_to pengembalian_path(assigns(:pengembalian))
  end

  test "should show pengembalian" do
    get :show, id: @pengembalian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pengembalian
    assert_response :success
  end

  test "should update pengembalian" do
    patch :update, id: @pengembalian, pengembalian: { denda: @pengembalian.denda, keterangan: @pengembalian.keterangan, telat: @pengembalian.telat, transaksi_id: @pengembalian.transaksi_id }
    assert_redirected_to pengembalian_path(assigns(:pengembalian))
  end

  test "should destroy pengembalian" do
    assert_difference('Pengembalian.count', -1) do
      delete :destroy, id: @pengembalian
    end

    assert_redirected_to pengembalians_path
  end
end
