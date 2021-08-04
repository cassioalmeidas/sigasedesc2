require "application_system_test_case"

class ManutencoesTest < ApplicationSystemTestCase
  setup do
    @manutencao = manutencoes(:one)
  end

  test "visiting the index" do
    visit manutencoes_url
    assert_selector "h1", text: "Manutencoes"
  end

  test "creating a Manutencao" do
    visit manutencoes_url
    click_on "New Manutencao"

    fill_in "Ativo", with: @manutencao.ativo_id
    fill_in "Data conclusao", with: @manutencao.data_conclusao
    fill_in "Data entrega", with: @manutencao.data_entrega
    fill_in "Responsavel recebimento", with: @manutencao.responsavel_recebimento
    fill_in "Situacao", with: @manutencao.situacao
    fill_in "Tecnico recebeu", with: @manutencao.tecnico_recebeu_id
    click_on "Create Manutencao"

    assert_text "Manutencao was successfully created"
    click_on "Back"
  end

  test "updating a Manutencao" do
    visit manutencoes_url
    click_on "Edit", match: :first

    fill_in "Ativo", with: @manutencao.ativo_id
    fill_in "Data conclusao", with: @manutencao.data_conclusao
    fill_in "Data entrega", with: @manutencao.data_entrega
    fill_in "Responsavel recebimento", with: @manutencao.responsavel_recebimento
    fill_in "Situacao", with: @manutencao.situacao
    fill_in "Tecnico recebeu", with: @manutencao.tecnico_recebeu_id
    click_on "Update Manutencao"

    assert_text "Manutencao was successfully updated"
    click_on "Back"
  end

  test "destroying a Manutencao" do
    visit manutencoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manutencao was successfully destroyed"
  end
end
