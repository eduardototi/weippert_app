require "application_system_test_case"

class OwnersTest < ApplicationSystemTestCase
  test "visiting the index" do
    login_as users(:george)
    visit '/owners'
    assert_selector ".container"
    assert_selector "tr", count: Owner.count + 1
    
  end

  test "create a new owner" do
    login_as users(:george)
    visit '/owners/new'

    fill_in "owner_name", with: "Pedro Eduardo"
    fill_in "owner_cpf", with: "00840400098"
    fill_in "owner_rg", with: "8086499343"
    # fill_in "owner_birthdate", with:  "2014/01/01"    
    fill_in "owner_email", with: "eduardototi@gmail.com"
    fill_in "owner_marital_status", with: "Solteiro"
    fill_in "owner_address", with: "Rua Sevastião Paraná, 482, Curitiba/PR"
    fill_in "owner_phone", with: "41995820154"

    click_on 'Enviar'

  end

end
