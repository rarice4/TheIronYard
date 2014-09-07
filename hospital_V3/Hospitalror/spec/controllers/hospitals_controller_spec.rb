require 'rails_helper'

describe HospitalsController do
  let(:hospital) { Hospital.create(name: "HOSP", description: "blah")}

  # let patient { FactoryGirl.create(:patient, hospital: hospital)}
 
  it "GET #index" do
    sign_in
    get :index
    expect(assigns(:hospitals).class).to eq(Hospital::ActiveRecord_Relation)
  end

  it "GET #new" do
    sign_in
    get :new
    expect(assigns(:hospital).class).to eq(Hospital)
    expect(assigns(:hospital).new_record?).to eq(true)
  end

  describe 'POST #create' do
    it 'successful creation' do
    sign_in
    expect {
      post :create, hospital: { name: "Medical Center", descriptions: "Healing" }
    }.to change(Hospital, :count).by(1)
    expect(response).to redirect_to hospitals_path
    end

    it "failed creation" do
      sign_in
      expect {
        post :create, hospital: { name: ""}}.not_to change(Hospital, :count)
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it 'should find an object' do
      sign_in
      # get :edit, dealership_id: dealership, id: car
      get :edit, id: hospital
      expect(assigns(:hospital)).to eq(hospital)
      expect(assigns(:hospital).class).to eq(Hospital)
    end
  end

  describe "GET #show" do
    it 'should find an object and create a comment' do
      sign_in
      get :show, id: hospital

      expect(assigns(:hospital)).to eq(hospital)
      expect(assigns(:hospital).class).to eq(Hospital)

      expect(assigns(:doctor).doctorable).to eq(hospital)
      expect(assigns(:doctor).class).to eq(Doctor)
    end
  end

  describe "DELETE #destroy" do
    it 'should find an object and remove the object' do
    sign_in
    delete :destroy, id: hospital
    expect(Hospital.count).to eq(0)
    end
  end





end