class CreateContactPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :title
      t.string :phone, null: false
      t.integer :contact_type, null: false, default: 0
      t.references :client

      t.timestamps
    end
  end
end
