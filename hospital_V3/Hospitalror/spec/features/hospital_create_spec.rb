require 'rails_helper'

describe "Ceate Hopsital", type: :feature, js: true do
  it "should allow creation of hospital" do
    visit root_path
    click_link 'Sign up'
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "1234asdf"
    fill_in "Password confirmation", with: "1234asdf"
    click_button "Sign up"
    click_link "Hospitals"
    click_link "Create Hospital"
    expect(page).to have_content("Description")
    fill_in "Name", with: "Test-Hospital"
    fill_in "Description", with: "healing people"
    click_button "Create Hospital"
    expect(page).to have_content("Hospitals")
    expect(page).to have_content("Show Doctors")

  end
end