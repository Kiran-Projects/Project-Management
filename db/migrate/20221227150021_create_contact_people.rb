class CreateContactPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :title
      t.string :phone
      t.integer :contact_type
      t.references :client

      t.timestamps
    end
  end
end
