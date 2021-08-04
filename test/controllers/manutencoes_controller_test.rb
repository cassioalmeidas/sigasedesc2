require "test_helper"

class ManutencoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manutencao = manutencoes(:one)
  end

  test "should get index" do
    get manutencoes_url
    assert_response :success
  end

  test "should get new" do
    get new_manutencao_url
    assert_response :success
  end

  test "should create manutencao" do
    assert_difference('Manutencao.count') do
      post manutencoes_url, params: { manutencao: { ativo_id: @manutencao.ativo_id, data_conclusao: @manutencao.data_conclusao, data_entrega: @manutencao.data_entrega, responsavel_recebimento: @manutencao.responsavel_recebimento, situacao: @manutencao.situacao, tecnico_recebeu_id: @manutencao.tecnico_recebeu_id } }
    end

    assert_redirected_to manutencao_url(Manutencao.last)
  end

  test "should show manutencao" do
    get manutencao_url(@manutencao)
    assert_response :success
  end

  test "should get edit" do
    get edit_manutencao_url(@manutencao)
    assert_response :success
  end

  test "should update manutencao" do
    patch manutencao_url(@manutencao), params: { manutencao: { ativo_id: @manutencao.ativo_id, data_conclusao: @manutencao.data_conclusao, data_entrega: @manutencao.data_entrega, responsavel_recebimento: @manutencao.responsavel_recebimento, situacao: @manutencao.situacao, tecnico_recebeu_id: @manutencao.tecnico_recebeu_id } }
    assert_redirected_to manutencao_url(@manutencao)
  end

  test "should destroy manutencao" do
    assert_difference('Manutencao.count', -1) do
      delete manutencao_url(@manutencao)
    end

    assert_redirected_to manutencoes_url
  end
end
