require 'rails_helper'

describe PatientsController do
  let (:patient) { FactoryGirl.create(:patient, hospital: hospital)}
  let (:hospital) { Hospital.create(name: "MUSC", description: "HEAL") }
 
  it "GET #index" do
    sign_in
    get :index, hospital_id: hospital
    expect(assigns(:patients).class).to eq(Patient::ActiveRecord_Associations_CollectionProxy)
  end

  it "GET #new" do
    sign_in
    get :new, hospital_id: hospital
    expect(assigns(:patient).class).to eq(Patient)
    expect(assigns(:patient).new_record?).to eq(true)
  end

  describe 'POST #create' do
    it 'successful creation' do
    sign_in
    p hospital
    expect {
      post :create, hospital_id: hospital, patient: { first_name: "john",last_name: "smith", dob: "2001-03-04", gender: "Male", description: "he is sick"}
    }.to change(Patient, :count).by(1)
    expect(response).to redirect_to hospital_patients_path(hospital)
    end

    it "failed creation" do
      sign_in
      expect {
        post :create, hospital_id: hospital, patient: { first_name: ""}}.not_to change(Patient, :count)
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it 'should find an object' do
      sign_in
      # get :edit, dealership_id: dealership, id: car
      get :edit, hospital_id: hospital, id: patient
      expect(assigns(:patient)).to eq(patient)
      expect(assigns(:patient).class).to eq(Patient)
    end
  end

  describe "GET #show" do
    it 'should find an object and create a comment' do
      sign_in
      get :show, hospital_id: hospital ,id: patient
      
      expect(assigns(:patient)).to eq(patient)
      expect(assigns(:patient).class).to eq(Patient)

      expect(assigns(:doctor).doctorable).to eq(patient)
      expect(assigns(:doctor).class).to eq(Doctor)
    end
  end

  describe "DELETE #destroy" do
    it 'should find an object and remove the object' do
    sign_in
    delete :destroy, hospital_id: hospital, id: patient
    expect(Patient.count).to eq(0)
    end
  end

end