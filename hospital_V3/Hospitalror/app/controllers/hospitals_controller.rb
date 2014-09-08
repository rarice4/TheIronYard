class HospitalsController < ApplicationController
before_action :authenticate_user!
respond_to :json, :html
def index
  @hospitals = Hospital.all

end

def show
  
  @hospital = Hospital.find params[:id]
  @patients = @hospital.patients
   @doctors = @hospital.doctors.all
   @doctor = @hospital.doctors.new
end


def new 
  @hospital = Hospital.new
end

def create
  @hospital = Hospital.create hospital_params
  if @hospital.save
    redirect_to hospitals_path
  else
    render :new
  end

end

def edit
  @hospital = Hospital.find params[:id]
end


def update
  @hospital = Hospital.find params[:id]
  @hospital.update_attributes hospital_params
  redirect_to hospitals_path
end

def destroy
  @hospital = Hospital.find params[:id]
  @hospital.delete
  redirect_to hospitals_path
end

def create_doctor
    @hospital = Hospital.find params[:id]
    @doctor = @hospital.doctors.create doctor_params
    redirect_to hospital_path(@hospital)
  end

  def delete_doctor
    @hospital = Hospital.find params[:id]
    
    @doctor = @hospital.doctors.find params[:doctor_id]
    @doctor.delete
    redirect_to hospital_path(@hospital)
  end

private
def hospital_params
  params.require(:hospital).permit(:name, :description, :address)
end
 def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :description, :gender, :workflow_state, :hospital_id)
    end
def doctor_params
      params.require(:doctor).permit(:content)

  end



end
