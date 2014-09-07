require 'rails_helper'

describe "Ceate Patient", type: :feature, js: true do
  
  it "should allow creation of hospital" do
    user = create(:user)
    hospital = create(:hospital)
    visit root_path 
    fill_in "Email", with: "John@aol.com"
    fill_in "Password", with: "12345678"
    click_button "Log in"
    click_link "Hospitals"
    click_link "Show Doctors"
    expect(page).to have_content("Doctors")
  end
end