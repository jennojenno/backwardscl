require 'test_helper'

class WantedAdsControllerTest < ActionController::TestCase
  setup do
    @wanted_ad = wanted_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wanted_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wanted_ad" do
    assert_difference('WantedAd.count') do
      post :create, wanted_ad: { budget_from: @wanted_ad.budget_from, budget_to: @wanted_ad.budget_to, car_make: @wanted_ad.car_make, car_model: @wanted_ad.car_model, car_type: @wanted_ad.car_type, color: @wanted_ad.color, description: @wanted_ad.description, desired_mpg: @wanted_ad.desired_mpg, mileage_from: @wanted_ad.mileage_from, mileage_to: @wanted_ad.mileage_to, year_from: @wanted_ad.year_from, year_to: @wanted_ad.year_to }
    end

    assert_redirected_to wanted_ad_path(assigns(:wanted_ad))
  end

  test "should show wanted_ad" do
    get :show, id: @wanted_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wanted_ad
    assert_response :success
  end

  test "should update wanted_ad" do
    put :update, id: @wanted_ad, wanted_ad: { budget_from: @wanted_ad.budget_from, budget_to: @wanted_ad.budget_to, car_make: @wanted_ad.car_make, car_model: @wanted_ad.car_model, car_type: @wanted_ad.car_type, color: @wanted_ad.color, description: @wanted_ad.description, desired_mpg: @wanted_ad.desired_mpg, mileage_from: @wanted_ad.mileage_from, mileage_to: @wanted_ad.mileage_to, year_from: @wanted_ad.year_from, year_to: @wanted_ad.year_to }
    assert_redirected_to wanted_ad_path(assigns(:wanted_ad))
  end

  test "should destroy wanted_ad" do
    assert_difference('WantedAd.count', -1) do
      delete :destroy, id: @wanted_ad
    end

    assert_redirected_to wanted_ads_path
  end
end
