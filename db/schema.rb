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

ActiveRecord::Schema.define(version: 20151103041858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"
  enable_extension "fuzzystrmatch"

  create_table "class_rooms", force: true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "class_rooms", ["department_id"], name: "index_class_rooms_on_department_id", using: :btree

  create_table "departments", force: true do |t|
    t.string   "name"
    t.text     "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lecturers", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subject_id"
    t.integer  "class_room_id"
  end

  add_index "lecturers", ["class_room_id"], name: "index_lecturers_on_class_room_id", using: :btree
  add_index "lecturers", ["subject_id"], name: "index_lecturers_on_subject_id", using: :btree

  create_table "lecturers_subjects", force: true do |t|
    t.integer "lecturer_id"
    t.integer "subject_id"
  end

  add_index "lecturers_subjects", ["lecturer_id"], name: "index_lecturers_subjects_on_lecturer_id", using: :btree
  add_index "lecturers_subjects", ["subject_id"], name: "index_lecturers_subjects_on_subject_id", using: :btree

  create_table "student_subjects", force: true do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_subjects", ["student_id"], name: "index_student_subjects_on_student_id", using: :btree
  add_index "student_subjects", ["subject_id"], name: "index_student_subjects_on_subject_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "phone"
    t.integer  "class_room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["class_room_id"], name: "index_students_on_class_room_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lecturer_id"
  end

  add_index "subjects", ["lecturer_id"], name: "index_subjects_on_lecturer_id", using: :btree

end
