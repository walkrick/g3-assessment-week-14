class CreatePrescriptionsTable < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :medication_id
      t.integer :patient_id
      t.string :dosage
      t.string :schedule
      t.date :start_date
      t.date :end_date
    end
  end
end
