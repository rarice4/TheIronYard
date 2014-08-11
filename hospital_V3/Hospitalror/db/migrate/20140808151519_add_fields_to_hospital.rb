class AddFieldsToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :name, :string
    add_column :hospitals, :description, :text
  end
end
