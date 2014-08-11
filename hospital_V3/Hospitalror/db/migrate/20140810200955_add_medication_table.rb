class AddMedicationTable < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.text :description
      t.text :description
      t.timestamps
  end
end
end