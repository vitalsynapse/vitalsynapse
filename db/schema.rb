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

ActiveRecord::Schema.define(version: 20160520024124) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",              limit: 255, default: "", null: false
    t.string   "encrypted_password", limit: 255, default: "", null: false
    t.integer  "sign_in_count",      limit: 4,   default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip", limit: 255
    t.string   "last_sign_in_ip",    limit: 255
    t.integer  "failed_attempts",    limit: 4,   default: 0
    t.string   "unlock_token",       limit: 255
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "bmis", force: :cascade do |t|
    t.integer  "height",        limit: 4
    t.integer  "weight",        limit: 4
    t.float    "bodymassindex", limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",       limit: 4
  end

  add_index "bmis", ["user_id"], name: "index_bmis_on_user_id", using: :btree

  create_table "clinic_records", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.text     "problem",     limit: 65535
    t.text     "diagnosis",   limit: 65535
    t.text     "treatment",   limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "clinic_name", limit: 255
    t.date     "visit_date"
    t.time     "visit_time"
    t.float    "cost",        limit: 24
  end

  add_index "clinic_records", ["user_id"], name: "index_clinic_records_on_user_id", using: :btree

  create_table "clinical_blood_records", force: :cascade do |t|
    t.integer  "user_id",               limit: 4
    t.date     "report_date"
    t.date     "specimen_collected"
<<<<<<< HEAD
    t.text     "clinic_name",           limit: 65535
    t.string   "blood_type",            limit: 255
    t.string   "text",                  limit: 255
    t.float    "haemoglobin",           limit: 24
    t.float    "rbc",                   limit: 24
    t.float    "mcv",                   limit: 24
    t.float    "hct",                   limit: 24
    t.float    "mch",                   limit: 24
    t.float    "mchc",                  limit: 24
    t.float    "rdw_cv",                limit: 24
    t.float    "neutrophils",           limit: 24
    t.float    "lymphocytes",           limit: 24
    t.float    "monocytes",             limit: 24
    t.float    "eosinophills",          limit: 24
    t.float    "basophils",             limit: 24
    t.float    "platelet_count",        limit: 24
    t.float    "esr",                   limit: 24
    t.text     "blood_film_comment",    limit: 65535
    t.float    "sodium",                limit: 24
    t.float    "pottasium",             limit: 24
    t.float    "chloride",              limit: 24
    t.float    "urea",                  limit: 24
    t.float    "uric_acid",             limit: 24
    t.float    "creatinine",            limit: 24
    t.float    "egfe",                  limit: 24
    t.text     "urine_note",            limit: 65535
    t.float    "calcium",               limit: 24
    t.float    "corrected_calcium",     limit: 24
    t.float    "phosphate",             limit: 24
    t.float    "total_protein",         limit: 24
    t.float    "albumin",               limit: 24
    t.float    "globulin",              limit: 24
    t.text     "bilirubin",             limit: 65535
    t.float    "alkaline_phosphate",    limit: 24
    t.float    "ggt",                   limit: 24
    t.float    "aspartate_transferase", limit: 24
    t.float    "alanine_transaminase",  limit: 24
    t.float    "total_cholestrol",      limit: 24
    t.float    "triglycerides",         limit: 24
    t.float    "hdl_cholestrol",        limit: 24
    t.float    "ldl_cholestrol",        limit: 24
    t.float    "total_cholestrol_hdl",  limit: 24
    t.float    "glucose",               limit: 24
    t.float    "tsh",                   limit: 24
    t.float    "ft4",                   limit: 24
    t.float    "ft3",                   limit: 24
    t.text     "rheumatoid_factor",     limit: 65535
    t.string   "urine_appearance",      limit: 255
    t.string   "urine_colour",          limit: 255
    t.float    "specific_gravity",      limit: 24
    t.text     "leucocytes",            limit: 65535
    t.text     "nitrite",               limit: 65535
    t.text     "protein",               limit: 65535
    t.text     "urine_glucose",         limit: 65535
    t.text     "ketones",               limit: 65535
    t.text     "urobilinogen",          limit: 65535
    t.text     "blood",                 limit: 65535
    t.text     "epithelial_cell_count", limit: 65535
    t.text     "bacteria",              limit: 65535
    t.text     "others",                limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
=======
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
>>>>>>> 8b3d9fa978d47d9f7c3df72cf52ae0cde764494a
  end

  add_index "clinical_blood_records", ["user_id"], name: "index_clinical_blood_records_on_user_id", using: :btree

  create_table "glucoses", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.float    "measurement", limit: 24
    t.integer  "context",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "glucoses", ["user_id"], name: "index_glucoses_on_user_id", using: :btree

  create_table "healths", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.text     "file",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "record_category_id", limit: 4
  end

  add_index "healths", ["record_category_id"], name: "index_healths_on_record_category_id", using: :btree
  add_index "healths", ["user_id"], name: "index_healths_on_user_id", using: :btree

  create_table "pressures", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.float    "sbp",        limit: 24
    t.float    "dpb",        limit: 24
    t.integer  "context",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.date     "date_taken"
    t.time     "time_taken"
  end

  add_index "pressures", ["user_id"], name: "index_pressures_on_user_id", using: :btree

  create_table "pulses", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.date     "date_taken"
    t.time     "time_taken"
    t.integer  "measurement", limit: 4
    t.integer  "index",       limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "pulses", ["user_id"], name: "index_pulses_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "record_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "respiratories", force: :cascade do |t|
    t.date     "date_taken"
    t.time     "time_taken"
    t.integer  "measurement", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id",     limit: 4
    t.integer  "context",     limit: 4
  end

  add_index "respiratories", ["user_id"], name: "index_respiratories_on_user_id", using: :btree

  create_table "results", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.text     "answer",      limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "answer_id",   limit: 4
    t.integer  "user_id",     limit: 4
  end

  add_index "results", ["answer_id"], name: "index_results_on_answer_id", using: :btree
  add_index "results", ["question_id"], name: "index_results_on_question_id", using: :btree
  add_index "results", ["user_id"], name: "index_results_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.date     "dob"
    t.string   "address",                limit: 255
    t.string   "state",                  limit: 255
    t.string   "city",                   limit: 255
    t.string   "postcode",               limit: 255
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,     null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "admin",                              default: false
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.float    "height",                 limit: 24
    t.float    "weight",                 limit: 24
    t.integer  "blood_type",             limit: 4
    t.integer  "gender",                 limit: 4
    t.integer  "marital_status",         limit: 4
    t.integer  "ethnicity",              limit: 4
    t.integer  "occupation",             limit: 4
    t.string   "profile_pic",            limit: 255
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "bmis", "users"
  add_foreign_key "clinic_records", "users"
  add_foreign_key "clinical_blood_records", "users"
  add_foreign_key "glucoses", "users"
  add_foreign_key "healths", "record_categories"
  add_foreign_key "healths", "users"
  add_foreign_key "pressures", "users"
  add_foreign_key "pulses", "users"
  add_foreign_key "respiratories", "users"
  add_foreign_key "results", "answers"
  add_foreign_key "results", "questions"
  add_foreign_key "results", "users"
end
