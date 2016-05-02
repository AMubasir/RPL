require 'test_helper'

class PelanggansControllerTest < ActionController::TestCase
  setup do
    @pelanggan = pelanggans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pelanggans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pelanggan" do
    assert_difference('Pelanggan.count') do
      post :create, pelanggan: { alamat: @pelanggan.alamat, jenis_kelamin: @pelanggan.jenis_kelamin, nama: @pelanggan.nama, no_telp: @pelanggan.no_telp }
    end

    assert_redirected_to pelanggan_path(assigns(:pelanggan))
  end

  test "should show pelanggan" do
    get :show, id: @pelanggan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pelanggan
    assert_response :success
  end

  test "should update pelanggan" do
    patch :update, id: @pelanggan, pelanggan: { alamat: @pelanggan.alamat, jenis_kelamin: @pelanggan.jenis_kelamin, nama: @pelanggan.nama, no_telp: @pelanggan.no_telp }
    assert_redirected_to pelanggan_path(assigns(:pelanggan))
  end

  test "should destroy pelanggan" do
    assert_difference('Pelanggan.count', -1) do
      delete :destroy, id: @pelanggan
    end

    assert_redirected_to pelanggans_path
  end
end
