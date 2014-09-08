require 'rails_helper'

describe "Ceate Patient", type: :feature, js: true do
    let(:hospital) { Hospital.create(name: "MUSC", description: "Charleston")}
  
  it "should allow creation of patient" do
    user = create(:user)
    hospital = create(:hospital)
    visit root_path 
    fill_in "Email", with: "John@aol.com"
    fill_in "Password", with: "12345678"
    click_button "Log in"
    click_link "Hospitals"
    click_link "MUSC"
    click_link "addpatient"
  end
  it "should show patient details" do
    user = create(:user)
    patient = FactoryGirl.create(:patient, hospital: hospital)
    visit root_path 
    fill_in "Email", with: "John@aol.com"
    fill_in "Password", with: "12345678"
    click_button "Log in"
    click_link "Hospitals"
    click_link "MUSC"
    click_link "Show"
    expect(page).to have_content("he is sick")

  end

end
  
