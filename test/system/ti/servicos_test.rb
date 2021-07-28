require "application_system_test_case"

class Ti::ServicosTest < ApplicationSystemTestCase
  setup do
    @ti_servico = ti_servicos(:one)
  end

  test "visiting the index" do
    visit ti_servicos_url
    assert_selector "h1", text: "Ti/Servicos"
  end

  test "creating a Servico" do
    visit ti_servicos_url
    click_on "New Ti/Servico"

    fill_in "Descricao", with: @ti_servico.descricao
    fill_in "Nome", with: @ti_servico.nome
    click_on "Create Servico"

    assert_text "Servico was successfully created"
    click_on "Back"
  end

  test "updating a Servico" do
    visit ti_servicos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @ti_servico.descricao
    fill_in "Nome", with: @ti_servico.nome
    click_on "Update Servico"

    assert_text "Servico was successfully updated"
    click_on "Back"
  end

  test "destroying a Servico" do
    visit ti_servicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "ti_ was successfully destroyed"
  end
end
