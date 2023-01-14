class CreateProjectWorkParties < ActiveRecord::Migration[7.0]
  def change
    create_table :project_work_parties do |t|
      t.integer :bill_status, null: false, default: 0
      t.integer :payment_status, null: false, default: 0
      t.decimal :bill_amount, null: false, default: 0.0, precision: 10, scale: 2
      t.references :project, null: false, foreign_key: true
      t.references :work_party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
