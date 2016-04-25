require 'test_helper'

class ImdBsControllerTest < ActionController::TestCase
  setup do
    @imdb = imdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imdb" do
    assert_difference('Imdb.count') do
      post :create, imdb: { actor_id: @imdb.actor_id, genre_id: @imdb.genre_id, title: @imdb.title }
    end

    assert_redirected_to imdb_path(assigns(:imdb))
  end

  test "should show imdb" do
    get :show, id: @imdb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imdb
    assert_response :success
  end

  test "should update imdb" do
    patch :update, id: @imdb, imdb: { actor_id: @imdb.actor_id, genre_id: @imdb.genre_id, title: @imdb.title }
    assert_redirected_to imdb_path(assigns(:imdb))
  end

  test "should destroy imdb" do
    assert_difference('Imdb.count', -1) do
      delete :destroy, id: @imdb
    end

    assert_redirected_to imdbs_path
  end
end
