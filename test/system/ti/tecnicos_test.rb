require "application_system_test_case"

class Ti::TecnicosTest < ApplicationSystemTestCase
  setup do
    @ti_tecnico = ti_tecnicos(:one)
  end

  test "visiting the index" do
    visit ti_tecnicos_url
    assert_selector "h1", text: "Ti/Tecnicos"
  end

  test "creating a Tecnico" do
    visit ti_tecnicos_url
    click_on "New Ti/Tecnico"

    fill_in "Nome", with: @ti_tecnico.nome
    click_on "Create Tecnico"

    assert_text "Tecnico was successfully created"
    click_on "Back"
  end

  test "updating a Tecnico" do
    visit ti_tecnicos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @ti_tecnico.nome
    click_on "Update Tecnico"

    assert_text "Tecnico was successfully updated"
    click_on "Back"
  end

  test "destroying a Tecnico" do
    visit ti_tecnicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tecnico was successfully destroyed"
  end
end
