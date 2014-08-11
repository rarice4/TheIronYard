class WelcomeController < ApplicationController
  def index
    @patients = Patient.all
    @hospitals = Hospital.all
  end
end
