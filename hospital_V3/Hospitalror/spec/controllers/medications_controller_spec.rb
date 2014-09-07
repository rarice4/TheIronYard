require 'rails_helper'

describe MedicationsController do
  let (:patient) { FactoryGirl.create(:patient, hospital: hospital)}
  let (:hospital) { Hospital.create(name: "MUSC", description: "HEAL") }
  let (:medication) { FactoryGirl.create(:medication,patient: patient) }
 
  it "GET #index" do
    sign_in
    get :index, hospital_id: hospital, patient_id: patient, id: medication
    expect(assigns(:medication).class).to eq(Medication::ActiveRecord_Associations_CollectionProxy)
  end

  it "GET #new" do
    sign_in
    get :new, hospital_id: hospital, patient_id: patient
    expect(assigns(:medication).class).to eq(Medication)
    expect(assigns(:medication).new_record?).to eq(true)
  end

  describe 'POST #create' do
    it 'successful creation' do
    sign_in
    expect {
      post :create, hospital_id: hospital, patient_id: patient, medication: { name: "Advil", description: "1 per day"}
    }.to change(Medication, :count).by(1)
    expect(response).to redirect_to hospital_patient_medications_path(hospital, patient)
    end

    it "failed creation" do
      sign_in
      expect {
        post :create, hospital_id: hospital, patient_id: patient, medication: { name: ""}}.not_to change(Medication, :count)
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it 'should find an object' do
      sign_in
      # get :edit, dealership_id: dealership, id: car
      get :edit, hospital_id: hospital, patient_id: patient, id: medication
      expect(assigns(:medication)).to eq(medication)
      expect(assigns(:medication).class).to eq(Medication)
    end
  end

  describe "GET #show" do
    it 'should find an object and create a comment' do
      sign_in
      get :show, hospital_id: hospital , patient_id: patient, id: medication
      
      expect(assigns(:medication)).to eq(medication)
      expect(assigns(:medication).class).to eq(Medication)
    end
  end

  describe "DELETE #destroy" do
    it 'should find an object and remove the object' do
    sign_in
    delete :destroy, hospital_id: hospital, patient_id: patient, id: medication
    expect(Medication.count).to eq(0)
    end
  end

end