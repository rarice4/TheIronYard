class AddFieldsToCommentsTable < ActiveRecord::Migration
  def change
    add_column :doctors, :doctorable_type, :string
    add_column :doctors, :doctorable_id, :integer
  end
end
