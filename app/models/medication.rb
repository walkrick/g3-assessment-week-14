class Medication < ActiveRecord::Base

  has_many :prescriptions
  has_many :patients, through: :prescriptions



  
end