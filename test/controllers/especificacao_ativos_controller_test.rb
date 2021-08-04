require "test_helper"

class EspecificacaoAtivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especificacao_ativo = especificacao_ativos(:one)
  end

  test "should get index" do
    get especificacao_ativos_url
    assert_response :success
  end

  test "should get new" do
    get new_especificacao_ativo_url
    assert_response :success
  end

  test "should create especificacao_ativo" do
    assert_difference('EspecificacaoAtivo.count') do
      post especificacao_ativos_url, params: { especificacao_ativo: { nome: @especificacao_ativo.nome } }
    end

    assert_redirected_to especificacao_ativo_url(EspecificacaoAtivo.last)
  end

  test "should show especificacao_ativo" do
    get especificacao_ativo_url(@especificacao_ativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_especificacao_ativo_url(@especificacao_ativo)
    assert_response :success
  end

  test "should update especificacao_ativo" do
    patch especificacao_ativo_url(@especificacao_ativo), params: { especificacao_ativo: { nome: @especificacao_ativo.nome } }
    assert_redirected_to especificacao_ativo_url(@especificacao_ativo)
  end

  test "should destroy especificacao_ativo" do
    assert_difference('EspecificacaoAtivo.count', -1) do
      delete especificacao_ativo_url(@especificacao_ativo)
    end

    assert_redirected_to especificacao_ativos_url
  end
end
