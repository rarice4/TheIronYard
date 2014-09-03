require 'rails_helper'

RSpec.describe Patient, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject do
      Patient.new({
        first_name: "char",
        last_name: "nar"
      })    
  end

  it "should return a presence of false" do
    x = Patient.new
     expect(x.valid?).to eq(false)
  end

  it "should return a presence of true" do
    x = Patient.new
    x.first_name = "name"
    x.last_name = "asdf"
    x.dob = "2001-02-05"
    x.gender = "male"
    x.description = "sick"  
      expect(x.valid?).to eq(true)
  end

  it "should return values of class" do
    x = Patient.new
    expect(x.class).to eq(Patient)
  end
  describe Hospital do
    it { should have_many (:doctors) }
    it { should belong_to (:hospital) }
    it { should have_many (:medications) }
  end
end