class Patient < ActiveRecord::Base
validates :first_name, presence: true
validates :last_name, presence: true
validates_date :dob, :on_or_before => lambda { Date.current }
validates :gender, presence: true
validates :description, presence: true

belongs_to :hospital
has_many :medications
has_many :doctors, as: :doctorable

include Workflow
  workflow do
    state :waiting do
      event :check_up, transitions_to: :doctor_check_up
      event :x_ray, transitions_to: :x_ray_inprocess
      event :surgery, transitions_to: :surgery_inprocess
      event :pay_bills, transitions_to: :paying_bills
      event :discharge, transitions_to: :discharged

    end

    state :doctor_check_up do
      event :wait, transitions_to: :waiting
      event :x_ray, transitions_to: :x_ray_inprocess
      event :surgery, transitions_to: :surgery_inprocess
      event :pay_bills, transitions_to: :paying_bills
      event :discharge, transitions_to: :discharged
    end

    state :x_ray_inprocess do
      event :wait, transitions_to: :waiting
      event :check_up, transitions_to: :doctor_check_up
      event :surgery, transitions_to: :surgery_inprocess
      event :pay_bills, transitions_to: :paying_bills
      event :discharge, transitions_to: :discharged
    end

    state :surgery_inprocess do
      event :wait, transitions_to: :waiting
      event :check_up, transitions_to: :doctor_check_up
      event :x_ray, transitions_to: :x_ray_inprocess
      event :pay_bills, transitions_to: :paying_bills
      event :discharge, transitions_to: :discharged
    end

    state :paying_bills do
      
      event :discharge, transitions_to: :discharged
    end

    state :discharged
    
end







end

