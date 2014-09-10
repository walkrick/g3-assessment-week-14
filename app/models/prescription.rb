class Prescription < ActiveRecord::Base

  belongs_to :patient
  belongs_to :medication

  validates_presence_of :medication_id, :patient_id, :dosage, :schedule, :start_date, :end_date


end
