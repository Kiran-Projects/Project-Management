class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :address
      t.string :contact
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
