class Doctor < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :doctorable, polymorphic: true
end

