FactoryGirl.define do
  factory :user do
    email "John@aol.com"
    password  "12345678"
  end
  factory :hospital do
    name "MUSC"
    description "Charelston"

  factory :hospital_with_patient do
    after_create do |hospital|
      create(:patient, hospital: hospital)
      end
    end
  end


  factory :patient do
    first_name "john"
    last_name "smith"
    dob "2001-03-04"
    gender "Male"
    description "he is sick"
    hospital FactoryGirl.create(:hospital)

  factory :patient_with_medication do
    after_create do |patient|
      create(:medication, paient: patient)
      end
    end
  end
  factory :medication do
    name "Advil"
    description "1 tablet per day"
  end

end



# factory patient
#   hospital FactoryGirl.create(:hospital)

# factory hospital