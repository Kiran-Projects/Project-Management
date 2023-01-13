class CreateWorkParties < ActiveRecord::Migration[7.0]
  def change
    create_table :work_parties do |t|
      t.string :name
      t.references :work_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
