class PatientsController < ApplicationController
before_action :authenticate_user!

def search_patients
  @patients = Patient.where("last_name LIKE ?", "%#{params[:q]}%")
  respond_to do |format|
      format.js
    end
end


def index
  
  @hospital = Hospital.find params[:hospital_id]
  @patients = @hospital.patients
  @patient = @hospital.patients params[:id]
end

def show
  
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.find params[:id]
  @doctor = @patient.doctors.new
  @doctors = @patient.doctors.all


end

def new_error
@patient = Patient.new
end

def new
  p params
  @hospital = Hospital.find params[:hospital_id]
  @patient = Patient.new
end

def create
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.new patient_params
  if @patient.save == true
  redirect_to hospital_patients_path 
  else
    render :new
  end
end

def edit
   # Patient.find params[:id]
  @hospital = Hospital.find params[:hospital_id]
  @patient = @hospital.patients.find params[:id]
end

  def update
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
    if @patient.update_attributes patient_params
      redirect_to hospital_patients_path
    else
      render :edit
    end
  end
  def destroy
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
    @patient.delete
    redirect_to hospital_patients_path
  end

def create_doctor
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.find params[:id]
    @doctor = @patient.doctors.create doctor_params
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def delete_doctor
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.find params[:id]
    @doctor = @patient.doctors.find params[:doctor_id]
    @doctor.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end

private
  def patient_params
  params.require(:patient).permit(:first_name, :last_name, :dob, :description, :gender, :workflow_state, :hospital_id)
  end
  def doctor_params
      params.require(:doctor).permit(:content)

  end
end

