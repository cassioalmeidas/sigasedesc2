require "test_helper"

class Ti::TecnicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ti_tecnico = ti_tecnicos(:one)
  end

  test "should get index" do
    get ti_tecnicos_url
    assert_response :success
  end

  test "should get new" do
    get new_ti_tecnico_url
    assert_response :success
  end

  test "should create ti_tecnico" do
    assert_difference('Ti::Tecnico.count') do
      post ti_tecnicos_url, params: { ti_tecnico: { nome: @ti_tecnico.nome } }
    end

    assert_redirected_to ti_tecnico_url(Ti::Tecnico.last)
  end

  test "should show ti_tecnico" do
    get ti_tecnico_url(@ti_tecnico)
    assert_response :success
  end

  test "should get edit" do
    get edit_ti_tecnico_url(@ti_tecnico)
    assert_response :success
  end

  test "should update ti_tecnico" do
    patch ti_tecnico_url(@ti_tecnico), params: { ti_tecnico: { nome: @ti_tecnico.nome } }
    assert_redirected_to ti_tecnico_url(@ti_tecnico)
  end

  test "should destroy ti_tecnico" do
    assert_difference('Ti::Tecnico.count', -1) do
      delete ti_tecnico_url(@ti_tecnico)
    end

    assert_redirected_to ti_tecnicos_url
  end
end
