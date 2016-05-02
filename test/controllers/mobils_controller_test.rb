require 'test_helper'

class MobilsControllerTest < ActionController::TestCase
  setup do
    @mobil = mobils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mobils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mobil" do
    assert_difference('Mobil.count') do
      post :create, mobil: { harga: @mobil.harga, jenis_mobil_id: @mobil.jenis_mobil_id, keterangan: @mobil.keterangan, nama: @mobil.nama, no_polisi: @mobil.no_polisi, warna: @mobil.warna }
    end

    assert_redirected_to mobil_path(assigns(:mobil))
  end

  test "should show mobil" do
    get :show, id: @mobil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mobil
    assert_response :success
  end

  test "should update mobil" do
    patch :update, id: @mobil, mobil: { harga: @mobil.harga, jenis_mobil_id: @mobil.jenis_mobil_id, keterangan: @mobil.keterangan, nama: @mobil.nama, no_polisi: @mobil.no_polisi, warna: @mobil.warna }
    assert_redirected_to mobil_path(assigns(:mobil))
  end

  test "should destroy mobil" do
    assert_difference('Mobil.count', -1) do
      delete :destroy, id: @mobil
    end

    assert_redirected_to mobils_path
  end
end
