class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.datetime :start_date, null: false
      t.datetime :deadline
      t.integer :status, default: 0
      t.string :manager_name
      t.decimal :contract_amount, default: 0, precision: 10, scale: 2
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
