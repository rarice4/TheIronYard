FactoryGirl.define do
  factory :user do
    email "John@aol.com"
    password  "12345678"
  end
  factory :hospital do
    name "MUSC"
    description "Charelston"
  end
end