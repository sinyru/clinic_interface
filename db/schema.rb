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

ActiveRecord::Schema.define(version: 20170518164856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string   "date_on",    null: false
    t.string   "location",   null: false
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id", using: :btree
    t.index ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
    t.index ["user_id"], name: "index_appointments_on_user_id", using: :btree
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "specialty",  null: false
    t.bigint   "phone",      null: false
    t.string   "location",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_doctors_on_user_id", using: :btree
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_drugs_on_user_id", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "primary_doctor"
    t.string   "first_name",     null: false
    t.string   "last_name",      null: false
    t.integer  "height",         null: false
    t.integer  "weight",         null: false
    t.bigint   "phone",          null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_patients_on_user_id", using: :btree
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string   "pharmacy_location", null: false
    t.string   "usage_direction",   null: false
    t.string   "duration",          null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "patient_id"
    t.integer  "drug_id"
    t.integer  "doctor_id"
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id", using: :btree
    t.index ["drug_id"], name: "index_prescriptions_on_drug_id", using: :btree
    t.index ["patient_id"], name: "index_prescriptions_on_patient_id", using: :btree
    t.index ["user_id"], name: "index_prescriptions_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "users"
  add_foreign_key "doctors", "users"
  add_foreign_key "drugs", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "patients", "users"
  add_foreign_key "prescriptions", "doctors"
  add_foreign_key "prescriptions", "drugs"
  add_foreign_key "prescriptions", "patients"
  add_foreign_key "prescriptions", "users"
end
