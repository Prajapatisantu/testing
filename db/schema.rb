# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_23_041343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "answer"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["student_id"], name: "index_answers_on_student_id"
  end

  create_table "question_papers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "teacher_id", null: false
    t.index ["teacher_id"], name: "index_question_papers_on_teacher_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_paper_id", null: false
    t.string "questionable_type", null: false
    t.bigint "questionable_id", null: false
    t.index ["question_paper_id"], name: "index_questions_on_question_paper_id"
    t.index ["questionable_type", "questionable_id"], name: "index_questions_on_questionable"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_paper_id"
    t.index ["question_paper_id"], name: "index_students_on_question_paper_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "students"
  add_foreign_key "question_papers", "teachers"
  add_foreign_key "questions", "question_papers"
  add_foreign_key "students", "question_papers"
end
