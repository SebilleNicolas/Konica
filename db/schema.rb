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

ActiveRecord::Schema.define(version: 20150225083407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: true do |t|
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

  create_table "printers", force: true do |t|
    t.string   "code_printers"
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
    t.integer  "Id_route_yes"
    t.integer  "Id_route_no"
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

  create_table "user_visite_arbre_decisions", force: true do |t|
    t.integer "compteurVisiteArbreDecision"
  end

  create_table "user_visite_consommables", force: true do |t|
    t.integer "compteurVisiteConsommables"
  end

  create_table "user_visite_incidents", force: true do |t|
    t.integer "compteurVisiteIncidents"
  end

  create_table "user_visite_releve_compteurs", force: true do |t|
    t.integer "compteurVisiteReleveCompteurs"
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
