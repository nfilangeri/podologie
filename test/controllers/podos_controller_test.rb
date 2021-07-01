require "test_helper"

class PodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @podo = podos(:one)
  end

  test "should get index" do
    get podos_url
    assert_response :success
  end

  test "should get new" do
    get new_podo_url
    assert_response :success
  end

  test "should create podo" do
    assert_difference('Podo.count') do
      post podos_url, params: { podo: {  } }
    end

    assert_redirected_to podo_url(Podo.last)
  end

  test "should show podo" do
    get podo_url(@podo)
    assert_response :success
  end

  test "should get edit" do
    get edit_podo_url(@podo)
    assert_response :success
  end

  test "should update podo" do
    patch podo_url(@podo), params: { podo: {  } }
    assert_redirected_to podo_url(@podo)
  end

  test "should destroy podo" do
    assert_difference('Podo.count', -1) do
      delete podo_url(@podo)
    end

    assert_redirected_to podos_url
  end
end
