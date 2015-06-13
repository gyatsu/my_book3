require 'test_helper'

class Book3sControllerTest < ActionController::TestCase
  setup do
    @book3 = book3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book3" do
    assert_difference('Book3.count') do
      post :create, book3: { author: @book3.author, bookname: @book3.bookname, date: @book3.date, isbn: @book3.isbn, price: @book3.price, publisher: @book3.publisher }
    end

    assert_redirected_to book3_path(assigns(:book3))
  end

  test "should show book3" do
    get :show, id: @book3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book3
    assert_response :success
  end

  test "should update book3" do
    patch :update, id: @book3, book3: { author: @book3.author, bookname: @book3.bookname, date: @book3.date, isbn: @book3.isbn, price: @book3.price, publisher: @book3.publisher }
    assert_redirected_to book3_path(assigns(:book3))
  end

  test "should destroy book3" do
    assert_difference('Book3.count', -1) do
      delete :destroy, id: @book3
    end

    assert_redirected_to book3s_path
  end
end
