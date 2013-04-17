require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post :create, offer: { estvalue: @offer.estvalue, image1: @offer.image1, offerprice: @offer.offerprice, ownercartype: @offer.ownercartype, ownerdesc: @offer.ownerdesc, ownermake: @offer.ownermake, ownermileage: @offer.ownermileage, ownermodel: @offer.ownermodel, owneryear: @offer.owneryear, seller_id: @offer.seller_id }
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
    put :update, id: @offer, offer: { estvalue: @offer.estvalue, image1: @offer.image1, offerprice: @offer.offerprice, ownercartype: @offer.ownercartype, ownerdesc: @offer.ownerdesc, ownermake: @offer.ownermake, ownermileage: @offer.ownermileage, ownermodel: @offer.ownermodel, owneryear: @offer.owneryear, seller_id: @offer.seller_id }
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
