class Patient < ActiveRecord::Base
validates :first_name, presence: true
validates :last_name, presence: true
validates_date :dob, :on_or_before => lambda { Date.current }
validates :gender, presence: true
validates :description, presence: true

end

