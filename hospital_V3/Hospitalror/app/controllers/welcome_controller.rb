class WelcomeController < ApplicationController
  before_action :authenticate_user!
  layout "welcome"
  def index
    @patients = Patient.all
    @hospitals = Hospital.all
  end
end
