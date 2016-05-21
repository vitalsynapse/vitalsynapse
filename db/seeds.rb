# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.find_or_create_by(description: "Have you been diagnosed with any of the diseases below?")
Question.find_or_create_by(description: "Have any of your family members been diagnosed with any of the diseases below?")
Question.find_or_create_by(description: "Do you..")
Question.find_or_create_by(description:"Do you exercise for about 20 minutes a day for atleast three days in a week?")
Question.find_or_create_by(description:"Do you have any allergies to the following?")
Question.find_or_create_by(description:"Have you been admitted in a hospital before?")

Answer.find_or_create_by(question_id: 1, description:  "Diabetes")
Answer.find_or_create_by(question_id: 1, description:  "Hypertension")
Answer.find_or_create_by(question_id: 1, description:  "Heart Disease")
Answer.find_or_create_by(question_id: 1, description:  "Bronchial Asthma")
Answer.find_or_create_by(question_id: 1, description:  "Cancer")
Answer.find_or_create_by(question_id: 1, description:  "Diabetes")
Answer.find_or_create_by(question_id: 1, description:  "Hypertension")
Answer.find_or_create_by(question_id: 1, description:  "Heart Disease")
Answer.find_or_create_by(question_id: 1, description:  "Bronchial Asthma")
Answer.find_or_create_by(question_id: 1, description:  "Cancer")
Answer.find_or_create_by(question_id: 1, description:  "None")
Answer.find_or_create_by(question_id: 1, description:  "Others")

Answer.find_or_create_by(question_id: 2, description:  "Diabetes")
Answer.find_or_create_by(question_id: 2, description:  "Hypertension")
Answer.find_or_create_by(question_id: 2, description:  "Bronchial Asthma")
Answer.find_or_create_by(question_id: 2, description:  "Cancer")
Answer.find_or_create_by(question_id: 2, description:  "Diabetes")
Answer.find_or_create_by(question_id: 2, description:  "Hypertension")
Answer.find_or_create_by(question_id: 2, description:  "Heart Disease")
Answer.find_or_create_by(question_id: 2, description:  "Bronchial Asthma")
Answer.find_or_create_by(question_id: 2, description:  "Cancer")
Answer.find_or_create_by(question_id: 2, description:  "None")
Answer.find_or_create_by(question_id: 2, description:  "Others")


Answer.find_or_create_by(question_id: 3, description:  "Smoke")
Answer.find_or_create_by(question_id: 3, description:  "Consume Alcohol")
Answer.find_or_create_by(question_id: 3, description:  "None of the Above")

Answer.find_or_create_by(question_id: 4, description:  "Yes")
Answer.find_or_create_by(question_id: 4, description:  "No")

Answer.find_or_create_by(question_id: 5, description:  "Drugs")
Answer.find_or_create_by(question_id: 5, description:  "Food")
Answer.find_or_create_by(question_id: 5, description:  "Dust")
Answer.find_or_create_by(question_id: 5, description:  "None")
Answer.find_or_create_by(question_id: 5, description:  "Others")

Answer.find_or_create_by(question_id: 6, description:  "Yes")
Answer.find_or_create_by(question_id: 6, description:  "No")



RecordCategory.find_or_create_by(name: "Blood")
RecordCategory.find_or_create_by(name: "Urine")
RecordCategory.find_or_create_by(name: "X-Ray")
RecordCategory.find_or_create_by(name: "Cancer Markers")
RecordCategory.find_or_create_by(name: "Scopes")
RecordCategory.find_or_create_by(name: "Ultrasound")
RecordCategory.find_or_create_by(name: "CT Scan")
RecordCategory.find_or_create_by(name: "MRI")
RecordCategory.find_or_create_by(name: "PetScan")
RecordCategory.find_or_create_by(name: "Dental Profile")
RecordCategory.find_or_create_by(name: "Others")


Admin.create!(:email => "admin@vitalsynapse.com", :password => '12341234')

User.create!(:email => "user@test.com", :password => '12341234')
