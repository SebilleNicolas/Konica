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

ActiveRecord::Schema.define(version: 20150601122012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_valid_consommables", force: true do |t|
    t.string   "date_valid"
    t.string   "hour_valid"
    t.string   "minute_valid"
    t.integer  "user_id"
    t.integer  "consommable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_valid_decision_trees", force: true do |t|
    t.string   "date_valid"
    t.string   "hour_valid"
    t.string   "minute_valid"
    t.integer  "user_id"
    t.integer  "decision_tree_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_valid_incidents", force: true do |t|
    t.string   "date_valid"
    t.string   "hour_valid"
    t.string   "minute_valid"
    t.integer  "user_id"
    t.integer  "incident_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_valid_releve_compteurs", force: true do |t|
    t.string   "date_valid"
    t.string   "hour_valid"
    t.string   "minute_valid"
    t.integer  "user_id"
    t.integer  "releve_compteur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attachments", force: true do |t|
    t.string   "filename"
    t.string   "file"
    t.string   "type_attachment"
    t.integer  "printer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consommables", force: true do |t|
    t.string   "code_consommables"
    t.string   "designation_consommables"
    t.boolean  "valide_consommables"
    t.string   "duree_vie_consommables"
    t.integer  "replacement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decision_trees", force: true do |t|
    t.string   "title_decision_tree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidents", force: true do |t|
    t.string   "code_incidents"
    t.string   "intitule_incidents"
    t.text     "description_incidents"
    t.text     "solution_incidents"
    t.boolean  "valide_incidents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "printers", force: true do |t|
    t.string   "code_printers"
    t.string   "primary_key"
    t.text     "description_printers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "printers_consommables", force: true do |t|
    t.integer  "consommable_id"
    t.integer  "printer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "printers_incidents", force: true do |t|
    t.integer  "incident_id"
    t.integer  "printer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "title_question"
    t.string   "number_question"
    t.boolean  "question_yes"
    t.integer  "id_route_yes"
    t.integer  "id_route_no"
    t.integer  "decision_tree_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releve_compteurs", force: true do |t|
    t.text     "description_releve_compteurs"
    t.boolean  "valide_releve_compteurs"
    t.integer  "printer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replacements", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_add_consommables", force: true do |t|
    t.string   "date_add"
    t.string   "hour_add"
    t.string   "minute_add"
    t.integer  "user_id"
    t.integer  "consommable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_add_decision_trees", force: true do |t|
    t.string   "date_add"
    t.string   "hour_add"
    t.string   "minute_add"
    t.integer  "user_id"
    t.integer  "decision_tree_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_add_incidents", force: true do |t|
    t.string   "date_add"
    t.string   "hour_add"
    t.string   "minute_add"
    t.integer  "user_id"
    t.integer  "incident_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_add_releve_compteurs", force: true do |t|
    t.string   "date_add"
    t.string   "hour_add"
    t.string   "minute_add"
    t.integer  "user_id"
    t.integer  "releve_compteur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_connexions", force: true do |t|
    t.string   "date_connect"
    t.string   "hour_connect"
    t.string   "minute_connect"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_show_consommables", force: true do |t|
    t.string  "date_show"
    t.string  "hour_show"
    t.string  "minute_show"
    t.integer "user_id"
    t.integer "consommable_id"
  end

  create_table "user_show_decision_trees", force: true do |t|
    t.string  "date_show"
    t.string  "hour_show"
    t.string  "minute_show"
    t.integer "user_id"
    t.integer "decision_tree_id"
  end

  create_table "user_show_incidents", force: true do |t|
    t.string  "date_show"
    t.string  "hour_show"
    t.string  "minute_show"
    t.integer "user_id"
    t.integer "incident_id"
  end

  create_table "user_show_printers", force: true do |t|
    t.string  "date_show"
    t.string  "hour_show"
    t.string  "minute_show"
    t.integer "user_id"
    t.integer "printer_id"
  end

  create_table "user_show_releve_compteurs", force: true do |t|
    t.string  "date_show"
    t.string  "hour_show"
    t.string  "minute_show"
    t.integer "user_id"
    t.integer "releve_compteur_id"
  end

  create_table "user_update_consommables", force: true do |t|
    t.string   "date_update"
    t.string   "hour_update"
    t.string   "minute_update"
    t.integer  "user_id"
    t.integer  "consommable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_update_decision_trees", force: true do |t|
    t.string   "date_update"
    t.string   "hour_update"
    t.string   "minute_update"
    t.integer  "user_id"
    t.integer  "decision_tree_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_update_incidents", force: true do |t|
    t.string   "date_update"
    t.string   "hour_update"
    t.string   "minute_update"
    t.integer  "user_id"
    t.integer  "incident_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_update_releve_compteurs", force: true do |t|
    t.string   "date_update"
    t.string   "hour_update"
    t.string   "minute_update"
    t.integer  "user_id"
    t.integer  "releve_compteur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "login"
    t.boolean  "valide"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
