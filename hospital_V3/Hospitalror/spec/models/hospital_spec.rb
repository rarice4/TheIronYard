require 'rails_helper'

RSpec.describe Hospital, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject do
      Hospital.new({
        name: "A good Hospital",
        description: "we heal peeps"
      })    
  end

  it "should return a presence of false" do
    x = Hospital.new
     expect(x.valid?).to eq(false)
  end

  it "should return a presence of true" do
    x = Hospital.new
    x.name = "name"
      expect(x.valid?).to eq(true)
  end

  it "should return string" do
    x = Hospital.new
    x.description = "SADFASDF"
    expect(x.description.class).to eq(String)
  end

  it "should return values of class" do
    x = Hospital.new
    expect(x.class).to eq(Hospital)
  end
  describe Hospital do
    it { should have_many (:doctors) }
    it { should have_many (:patients) }
  end
end