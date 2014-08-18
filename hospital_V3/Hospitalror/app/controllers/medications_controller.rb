class MedicationsController < ApplicationController
before_action :authenticate_user!
def index
  
  @hospital = Hospital.find params[:hospital_id]
  @patients = @hospital.patients
  @patient = @hospital.patients.find params[:patient_id]
  @medication = @patient.medications params[:id]
end

def show
  
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.find params[:patient_id]
  @medication = @patient.medications.find params[:id]

end


def new
  p params
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.find params[:patient_id]
  @medication = Medication.new
end

def create
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.find params[:patient_id]
  @medication = @patient.medications.create medication_params
  if @medication.save == true
  redirect_to hospital_patient_medications_path 
  else
    render :new
  end
end

def edit
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.find params[:patient_id]
  @medication = @patient.medications.find params[:id]
end

def update
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.find params[:patient_id]
  @medication = @patient.medications.find params[:id]
  if @medication.update_attributes medication_params
    redirect_to hospital_patient_medications_path
  else
    render :edit
  end
end
  
  def destroy
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.find params[:patient_id]
    @medication = Medication.find params[:id]
    @medication.delete
    redirect_to hospital_patient_medications_path
  end

private
  def medication_params
  params.require(:medication).permit(:name, :description, :patient_id)
  end
  
end




