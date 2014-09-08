class Hospital < ActiveRecord::Base
  validates :name, presence: true
  has_many :patients
  has_many :doctors, as: :doctorable
  geocoded_by :address   
  after_validation :geocode


end


