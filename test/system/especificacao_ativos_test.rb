require "application_system_test_case"

class EspecificacaoAtivosTest < ApplicationSystemTestCase
  setup do
    @especificacao_ativo = especificacao_ativos(:one)
  end

  test "visiting the index" do
    visit especificacao_ativos_url
    assert_selector "h1", text: "Especificacao Ativos"
  end

  test "creating a Especificacao ativo" do
    visit especificacao_ativos_url
    click_on "New Especificacao Ativo"

    fill_in "Nome", with: @especificacao_ativo.nome
    click_on "Create Especificacao ativo"

    assert_text "Especificacao ativo was successfully created"
    click_on "Back"
  end

  test "updating a Especificacao ativo" do
    visit especificacao_ativos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @especificacao_ativo.nome
    click_on "Update Especificacao ativo"

    assert_text "Especificacao ativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Especificacao ativo" do
    visit especificacao_ativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Especificacao ativo was successfully destroyed"
  end
end
