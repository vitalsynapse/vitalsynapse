# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160520224650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "blood_clinic_records", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "report_date"
    t.date     "specimen_collected"
    t.text     "clinic_name"
    t.float    "haemoglobin"
    t.float    "rbc"
    t.float    "mcv"
    t.float    "hct"
    t.float    "mch"
    t.float    "mchc"
    t.float    "rdw_cv"
    t.float    "neutrophils"
    t.float    "lymphocytes"
    t.float    "monocytes"
    t.float    "eosinophills"
    t.float    "basophils"
    t.float    "platelet_count"
    t.float    "esr"
    t.text     "blood_film_comment"
    t.float    "sodium"
    t.float    "pottasium"
    t.float    "chloride"
    t.float    "urea"
    t.float    "uric_acid"
    t.float    "creatinine"
    t.float    "egfe"
    t.text     "urine_note"
    t.float    "calcium"
    t.float    "corrected_calcium"
    t.float    "phosphate"
    t.float    "total_protein"
    t.float    "albumin"
    t.float    "globulin"
    t.text     "bilirubin"
    t.float    "alkaline_phosphate"
    t.float    "ggt"
    t.float    "aspartate_transferase"
    t.float    "alanine_transaminase"
    t.float    "total_cholestrol"
    t.float    "triglycerides"
    t.float    "hdl_cholestrol"
    t.float    "ldl_cholestrol"
    t.float    "total_cholestrol_hdl"
    t.float    "glucose"
    t.float    "tsh"
    t.float    "ft4"
    t.float    "ft3"
    t.text     "rheumatoid_factor"
    t.string   "urine_appearance"
    t.string   "urine_colour"
    t.float    "specific_gravity"
    t.text     "leucocytes"
    t.text     "nitrite"
    t.text     "protein"
    t.text     "urine_glucose"
    t.text     "ketones"
    t.text     "urobilinogen"
    t.text     "blood"
    t.text     "epithelial_cell_count"
    t.text     "bacteria"
    t.text     "others"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "blood_clinic_records", ["user_id"], name: "index_blood_clinic_records_on_user_id", using: :btree

  create_table "blood_health_records", force: :cascade do |t|
    t.date     "report_date"
    t.date     "specimen_collected"
    t.text     "clinic_name"
    t.float    "haemoglobin"
    t.float    "rbc"
    t.float    "mcv"
    t.float    "hct"
    t.float    "mch"
    t.float    "mchc"
    t.float    "rdw_cv"
    t.float    "neutrophils"
    t.float    "lymphocytes"
    t.float    "monocytes"
    t.float    "eosinophills"
    t.float    "basophils"
    t.float    "platelet_count"
    t.float    "esr"
    t.text     "blood_film_comment"
    t.float    "sodium"
    t.float    "pottasium"
    t.float    "chloride"
    t.float    "urea"
    t.float    "uric_acid"
    t.float    "creatinine"
    t.float    "egfe"
    t.text     "urine_note"
    t.float    "calcium"
    t.float    "corrected_calcium"
    t.float    "phosphate"
    t.float    "total_protein"
    t.float    "albumin"
    t.float    "globulin"
    t.text     "bilirubin"
    t.float    "alkaline_phosphate"
    t.float    "ggt"
    t.float    "aspartate_transferase"
    t.float    "alanine_transaminase"
    t.float    "total_cholestrol"
    t.float    "triglycerides"
    t.float    "hdl_cholestrol"
    t.float    "ldl_cholestrol"
    t.float    "total_cholestrol_hdl"
    t.float    "glucose"
    t.float    "tsh"
    t.float    "ft4"
    t.float    "ft3"
    t.text     "rheumatoid_factor"
    t.string   "urine_appearance"
    t.string   "urine_colour"
    t.float    "specific_gravity"
    t.text     "leucocytes"
    t.text     "nitrite"
    t.text     "protein"
    t.text     "urine_glucose"
    t.text     "ketones"
    t.text     "urobilinogen"
    t.text     "blood"
    t.text     "epithelial_cell_count"
    t.text     "bacteria"
    t.text     "others"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "bloods", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "blood_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bloods", ["user_id"], name: "index_bloods_on_user_id", using: :btree

  create_table "bmis", force: :cascade do |t|
    t.integer  "height"
    t.integer  "weight"
    t.float    "bodymassindex"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.date     "date_taken"
    t.time     "time_taken"
  end

  add_index "bmis", ["user_id"], name: "index_bmis_on_user_id", using: :btree

  create_table "cancer_markers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "cancer_file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cancer_markers", ["user_id"], name: "index_cancer_markers_on_user_id", using: :btree

  create_table "clinic_records", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "problem"
    t.text     "diagnosis"
    t.text     "treatment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "clinic_name"
    t.date     "visit_date"
    t.time     "visit_time"
    t.float    "cost"
  end

  add_index "clinic_records", ["user_id"], name: "index_clinic_records_on_user_id", using: :btree

  create_table "clinical_blood_records", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "report_date"
    t.date     "specimen_collected"
    t.text     "clinic_name"
    t.string   "blood_type"
    t.string   "text"
    t.float    "haemoglobin"
    t.float    "rbc"
    t.float    "mcv"
    t.float    "hct"
    t.float    "mch"
    t.float    "mchc"
    t.float    "rdw_cv"
    t.float    "neutrophils"
    t.float    "lymphocytes"
    t.float    "monocytes"
    t.float    "eosinophills"
    t.float    "basophils"
    t.float    "platelet_count"
    t.float    "esr"
    t.text     "blood_film_comment"
    t.float    "sodium"
    t.float    "pottasium"
    t.float    "chloride"
    t.float    "urea"
    t.float    "uric_acid"
    t.float    "creatinine"
    t.text     "urine_note"
    t.float    "calcium"
    t.float    "corrected_calcium"
    t.float    "phosphate"
    t.float    "total_protein"
    t.float    "albumin"
    t.float    "globulin"
    t.float    "alkaline_phosphate"
    t.float    "ggt"
    t.float    "aspartate_transferase"
    t.float    "alanine_transaminase"
    t.float    "total_cholestrol"
    t.float    "triglycerides"
    t.float    "hdl_cholestrol"
    t.float    "ldl_cholestrol"
    t.float    "total_cholestrol_hdl"
    t.float    "glucose"
    t.float    "tsh"
    t.float    "ft4"
    t.float    "ft3"
    t.text     "rheumatoid_factor"
    t.string   "urine_appearance"
    t.string   "urine_colour"
    t.float    "specific_gravity"
    t.text     "leucocytes"
    t.text     "nitrite"
    t.text     "urine_glucose"
    t.text     "ketones"
    t.text     "urobilinogen"
    t.text     "blood"
    t.text     "epithelial_cell_count"
    t.text     "bacteria"
    t.text     "others"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "protein"
    t.float    "hba1c"
    t.float    "bilirubin_urinalysis"
    t.float    "bilirubin_total"
    t.float    "egfr"
  end

  add_index "clinical_blood_records", ["user_id"], name: "index_clinical_blood_records_on_user_id", using: :btree

  create_table "ctscans", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "ctscan_file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "ctscans", ["user_id"], name: "index_ctscans_on_user_id", using: :btree

  create_table "glucoses", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "measurement"
    t.integer  "context"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "date_taken"
    t.time     "time_taken"
  end

  add_index "glucoses", ["user_id"], name: "index_glucoses_on_user_id", using: :btree

  create_table "healths", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "file"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "record_category_id"
  end

  add_index "healths", ["record_category_id"], name: "index_healths_on_record_category_id", using: :btree
  add_index "healths", ["user_id"], name: "index_healths_on_user_id", using: :btree

  create_table "mris", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "mri_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mris", ["user_id"], name: "index_mris_on_user_id", using: :btree

  create_table "petscans", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "petscan_file"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "petscans", ["user_id"], name: "index_petscans_on_user_id", using: :btree

  create_table "pressures", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "sbp"
    t.float    "dpb"
    t.integer  "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "date_taken"
    t.time     "time_taken"
  end

  add_index "pressures", ["user_id"], name: "index_pressures_on_user_id", using: :btree

  create_table "pulses", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date_taken"
    t.time     "time_taken"
    t.integer  "measurement"
    t.integer  "index"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pulses", ["user_id"], name: "index_pulses_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "record_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "respiratories", force: :cascade do |t|
    t.date     "date_taken"
    t.time     "time_taken"
    t.integer  "measurement"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "context"
  end

  add_index "respiratories", ["user_id"], name: "index_respiratories_on_user_id", using: :btree

  create_table "result_answers", force: :cascade do |t|
    t.integer  "result_id"
    t.integer  "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "result_answers", ["result_id"], name: "index_result_answers_on_result_id", using: :btree

  create_table "results", force: :cascade do |t|
    t.integer  "survey_record_id"
    t.integer  "question_id"
    t.text     "answer"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "answer_id"
    t.integer  "user_id"
  end

  add_index "results", ["answer_id"], name: "index_results_on_answer_id", using: :btree
  add_index "results", ["question_id"], name: "index_results_on_question_id", using: :btree
  add_index "results", ["survey_record_id"], name: "index_results_on_survey_record_id", using: :btree
  add_index "results", ["user_id"], name: "index_results_on_user_id", using: :btree

  create_table "scopes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "scope_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "scopes", ["user_id"], name: "index_scopes_on_user_id", using: :btree

  create_table "survey_records", force: :cascade do |t|
    t.text     "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "survey_records", ["user_id"], name: "index_survey_records_on_user_id", using: :btree

  create_table "ultrasounds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "ultrasound_file"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "ultrasounds", ["user_id"], name: "index_ultrasounds_on_user_id", using: :btree

  create_table "urines", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "urine_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "urines", ["user_id"], name: "index_urines_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "address"
    t.string   "state"
    t.string   "city"
    t.string   "postcode"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "provider"
    t.string   "uid"
    t.float    "height"
    t.float    "weight"
    t.integer  "blood_type"
    t.integer  "gender"
    t.integer  "marital_status"
    t.integer  "ethnicity"
    t.integer  "occupation"
    t.string   "profile_pic"
    t.boolean  "pdpa"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "xrays", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "xray_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "xrays", ["user_id"], name: "index_xrays_on_user_id", using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "blood_clinic_records", "users"
  add_foreign_key "bloods", "users"
  add_foreign_key "bmis", "users"
  add_foreign_key "cancer_markers", "users"
  add_foreign_key "clinic_records", "users"
  add_foreign_key "clinical_blood_records", "users"
  add_foreign_key "ctscans", "users"
  add_foreign_key "glucoses", "users"
  add_foreign_key "healths", "record_categories"
  add_foreign_key "healths", "users"
  add_foreign_key "mris", "users"
  add_foreign_key "petscans", "users"
  add_foreign_key "pressures", "users"
  add_foreign_key "pulses", "users"
  add_foreign_key "respiratories", "users"
  add_foreign_key "result_answers", "results"
  add_foreign_key "results", "answers"
  add_foreign_key "results", "questions"
  add_foreign_key "results", "survey_records"
  add_foreign_key "results", "users"
  add_foreign_key "scopes", "users"
  add_foreign_key "survey_records", "users"
  add_foreign_key "ultrasounds", "users"
  add_foreign_key "urines", "users"
  add_foreign_key "xrays", "users"
end
