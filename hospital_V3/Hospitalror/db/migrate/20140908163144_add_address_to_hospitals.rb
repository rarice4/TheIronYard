class AddAddressToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :address, :text
  end
end
