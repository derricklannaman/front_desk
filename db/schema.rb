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

ActiveRecord::Schema.define(version: 20160829150752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_details", force: :cascade do |t|
    t.integer  "users_id"
    t.string   "primary_phone"
    t.string   "primary_phone_type"
    t.string   "secondary_phone"
    t.string   "secondary_phone_type"
    t.string   "email"
    t.string   "contact_method"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["users_id"], name: "index_contact_details_on_users_id", using: :btree
  end

  create_table "medical_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "add",                  default: false, null: false
    t.boolean  "abnormal_pap_smear",   default: false, null: false
    t.boolean  "alcoholism",           default: false, null: false
    t.boolean  "allergies",            default: false, null: false
    t.boolean  "anemia",               default: false, null: false
    t.boolean  "anxiety",              default: false, null: false
    t.boolean  "arthritis",            default: false, null: false
    t.boolean  "asthma",               default: false, null: false
    t.boolean  "back_pain_chronic",    default: false, null: false
    t.boolean  "breast_cancer",        default: false, null: false
    t.boolean  "colon_polyp",          default: false, null: false
    t.boolean  "depression_current",   default: false, null: false
    t.boolean  "depression_past",      default: false, null: false
    t.boolean  "diabetes_type_1",      default: false, null: false
    t.boolean  "diabetes_type_2",      default: false, null: false
    t.boolean  "diabetes_gestational", default: false, null: false
    t.boolean  "diverticular_disease", default: false, null: false
    t.boolean  "eczema",               default: false, null: false
    t.boolean  "endometriosis",        default: false, null: false
    t.boolean  "erectile_dysfunction", default: false, null: false
    t.boolean  "fibromyalgia",         default: false, null: false
    t.boolean  "genital_herpes",       default: false, null: false
    t.boolean  "heart_desease",        default: false, null: false
    t.boolean  "glaucoma",             default: false, null: false
    t.boolean  "hemorrhoids",          default: false, null: false
    t.boolean  "high_cholesterol",     default: false, null: false
    t.boolean  "high_blood_pressure",  default: false, null: false
    t.boolean  "irritable_bowel",      default: false, null: false
    t.boolean  "kidney_stones",        default: false, null: false
    t.boolean  "low_thyroid",          default: false, null: false
    t.boolean  "migraine",             default: false, null: false
    t.boolean  "obesity",              default: false, null: false
    t.boolean  "osteoporosis",         default: false, null: false
    t.boolean  "osteopenia",           default: false, null: false
    t.boolean  "postmenopausal",       default: false, null: false
    t.boolean  "prostate_enlargement", default: false, null: false
    t.boolean  "reflux",               default: false, null: false
    t.boolean  "rheumatoid_arthritis", default: false, null: false
    t.boolean  "seizure_disorder",     default: false, null: false
    t.boolean  "sleep_apnea",          default: false, null: false
    t.boolean  "stroke",               default: false, null: false
    t.boolean  "tobacco_use",          default: false, null: false
    t.boolean  "appendix",             default: false, null: false
    t.boolean  "ear_tubes",            default: false, null: false
    t.boolean  "gall_bladder",         default: false, null: false
    t.boolean  "heart_bypass",         default: false, null: false
    t.boolean  "hernia_repair",        default: false, null: false
    t.boolean  "knee_acl",             default: false, null: false
    t.boolean  "knee_other",           default: false, null: false
    t.boolean  "lumbar_back",          default: false, null: false
    t.boolean  "neck_c_spine",         default: false, null: false
    t.boolean  "shoulder",             default: false, null: false
    t.boolean  "tonsils",              default: false, null: false
    t.boolean  "breast_augmentation",  default: false, null: false
    t.boolean  "c_section",            default: false, null: false
    t.boolean  "hysterectomy",         default: false, null: false
    t.boolean  "tubal_ligation",       default: false, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["user_id"], name: "index_medical_histories_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                             default: "",    null: false
    t.string   "encrypted_password",                default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "primary_phone"
    t.string   "primary_phone_type"
    t.string   "secondary_phone"
    t.string   "secondary_phone_type"
    t.string   "contact_method"
    t.string   "social_security_number1", limit: 3
    t.string   "social_security_number2", limit: 2
    t.string   "social_security_number3", limit: 4
    t.string   "preferred_language"
    t.string   "relationship_status"
    t.string   "employer"
    t.string   "race"
    t.string   "birthday"
    t.boolean  "is_policy_holder?",                 default: false
    t.boolean  "responsible_party?"
    t.boolean  "intake_complete",                   default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "contact_details", "users", column: "users_id"
  add_foreign_key "medical_histories", "users"
end
