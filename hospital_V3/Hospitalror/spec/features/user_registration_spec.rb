require 'rails_helper'

describe "user registration", type: :feature, js: true do
  it "should allow user registration" do
    visit root_path
    click_link 'Sign up'
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "1234asdf"
    fill_in "Password confirmation", with: "1234asdf"
    click_button "Sign up"
    expect(page).to have_content("LOG OUT")
    expect(page).not_to have_content("Log In")

  end

end