class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :description
      t.string :workflow_state
      t.timestamps
    end
  end
end
