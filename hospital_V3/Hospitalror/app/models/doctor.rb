class Doctor < ActiveRecord::Base
  validates :comment, presence: true
  belongs_to :doctorable, polymorphic: true
end

