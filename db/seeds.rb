# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.find_or_create_by(description: "Have you been diagnosed with any of the diseases below?")
Question.find_or_create_by(description: "Have any of your family members been diagnosed with any of the diseases below?, Diabetes, Hypertension, Heart Disease, Bronchial Asthma, Cancer, (if yes, specify who)")
Question.find_or_create_by(description: "Do you..")
Question.find_or_create_by(description:"Do you exercise for about 20 minutes three or more days a week?")
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
Answer.find_or_create_by(question_id: 1, description:  "Others")

Answer.find_or_create_by(question_id: 2, description:  "Mother")
Answer.find_or_create_by(question_id: 2, description:  "Father")
Answer.find_or_create_by(question_id: 2, description:  "Grandpa")
Answer.find_or_create_by(question_id: 2, description:  "Grandma")
Answer.find_or_create_by(question_id: 2, description:  "Siblings")
Answer.find_or_create_by(question_id: 2, description:  "None")


Answer.find_or_create_by(question_id: 3, description:  "Smoke")
Answer.find_or_create_by(question_id: 3, description:  "Consume Alcohol")

Answer.find_or_create_by(question_id: 4, description:  "Yes, most of the time")
Answer.find_or_create_by(question_id: 4, description:  "Yes, some of the time")
Answer.find_or_create_by(question_id: 4, description:  "No, I usually do not exercise this much")

Answer.find_or_create_by(question_id: 5, description:  "Drugs")
Answer.find_or_create_by(question_id: 5, description:  "Food")
Answer.find_or_create_by(question_id: 5, description:  "Dust")
Answer.find_or_create_by(question_id: 5, description:  "Others")

Answer.find_or_create_by(question_id: 6, description:  "No")
Answer.find_or_create_by(question_id: 6, description:  "Yes")


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
