require "test_helper"

class Ti::ServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ti_servico = ti_servicos(:one)
  end

  test "should get index" do
    get ti_servicos_url
    assert_response :success
  end

  test "should get new" do
    get new_ti_servico_url
    assert_response :success
  end

  test "should create ti_servico" do
    assert_difference('Ti::Servico.count') do
      post ti_servicos_url, params: { ti_servico: { descricao: @ti_servico.descricao, nome: @ti_servico.nome } }
    end

    assert_redirected_to ti_servico_url(Ti::Servico.last)
  end

  test "should show ti_servico" do
    get ti_servico_url(@ti_servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_ti_servico_url(@ti_servico)
    assert_response :success
  end

  test "should update ti_servico" do
    patch servico_url(@ti_servico), params: { ti_servico: { descricao: @ti_servico.descricao, nome: @ti_servico.nome } }
    assert_redirected_to ti_servico_url(@ti_servico)
  end

  test "should destroy ti_servico" do
    assert_difference('Ti::Servico.count', -1) do
      delete ti_servico_url(@ti_servico)
    end

    assert_redirected_to ti_servicos_url
  end
end
