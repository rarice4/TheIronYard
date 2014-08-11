class CreateComments < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.text :content
      t.timestamps
    end
  end
end
