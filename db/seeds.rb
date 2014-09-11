User.destroy_all
Patient.destroy_all
Medication.destroy_all

user = User.create!(
  name: "Some User",
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

other_user = User.create!(
  name: "Other User",
  email: 'other@example.com',
  password: 'password',
  password_confirmation: 'password'
)
awesome_user = User.create!(
  name: "Rick",
  email: 'rick@example.com',
  password: '1234',
  password_confirmation: '1234'
)

Patient.create!(first_name: "Will", last_name: "Schuster")
Patient.create!(first_name: "Sue", last_name: "Sylvester")
Patient.create!(first_name: "Mercedes", last_name: "Jones")
Patient.create!(first_name: "Rachel", last_name: "Barry")
Patient.create!(first_name: "Finn", last_name: "Hudson")

Medication.create!(name: "Tylenol")
Medication.create!(name: "Cough Syrup")
Medication.create!(name: "Advil")
