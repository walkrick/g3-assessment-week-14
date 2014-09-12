class Prescription < ActiveRecord::Base

  belongs_to :patient
  belongs_to :medication
  belongs_to :user

  validates_presence_of :user_id, :medication_id, :patient_id, :dosage, :schedule, :start_date, :end_date

  validate :end_date_is_after_start_date

 validates_format_of :dosage, with: /\A(?:[0-9]*)\s([a-z]*)\z/
  private


  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?
    if end_date < start_date
      errors.add(:end_date, "cannot be before the start date")
    end
  end


end
