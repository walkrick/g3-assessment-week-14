class Prescription < ActiveRecord::Base

  belongs_to :patient
  belongs_to :medication
  belongs_to :user

  validates_presence_of :user_id, :medication_id, :patient_id, :dosage, :schedule, :start_date, :end_date


end
