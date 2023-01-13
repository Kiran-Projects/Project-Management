class CreateProjectWorkParties < ActiveRecord::Migration[7.0]
  def change
    create_table :project_work_parties do |t|
      t.integer :bill_status
      t.decimal :bill_amount
      t.integer :payment_status
      t.references :projects, null: false, foreign_key: true
      t.references :work_parties, null: false, foreign_key: true

      t.timestamps
    end
  end
end
