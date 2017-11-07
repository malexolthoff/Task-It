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

ActiveRecord::Schema.define(version: 20171107170755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "internship_id"
    t.text     "message"
    t.string   "resume"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["internship_id"], name: "index_applications_on_internship_id", using: :btree
    t.index ["user_id"], name: "index_applications_on_user_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.string   "photo"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "internships", force: :cascade do |t|
    t.string   "name"
    t.text     "responsibilities"
    t.text     "qualifications"
    t.integer  "length"
    t.integer  "hours"
    t.integer  "company_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["company_id"], name: "index_internships_on_company_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "photo"
    t.text     "description"
    t.text     "education"
    t.text     "experience"
    t.text     "hobbies"
    t.text     "skills"
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "applications", "internships"
  add_foreign_key "applications", "users"
  add_foreign_key "internships", "companies"
end
