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

ActiveRecord::Schema.define(version: 20160121121635) do

  create_table "admins", force: :cascade do |t|
    t.string   "adm_id"
    t.string   "adm_pw"
    t.string   "adm_nm"
    t.string   "adm_tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commoncds", force: :cascade do |t|
    t.string   "main_cd"
    t.integer  "det_cd"
    t.string   "cd_nm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exeqs", force: :cascade do |t|
    t.integer  "ex_det_cd"
    t.integer  "eq_det_cd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exmths", force: :cascade do |t|
    t.integer  "ex_det_cd"
    t.string   "ex_mth_img"
    t.text     "ex_mth_ep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expts", force: :cascade do |t|
    t.integer  "ex_det_cd"
    t.integer  "pt_det_cd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exties", force: :cascade do |t|
    t.integer  "ex_det_cd"
    t.integer  "ty_det_cd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gymadms", force: :cascade do |t|
    t.integer  "gym_no"
    t.integer  "adm_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gyms", force: :cascade do |t|
    t.string   "gym_nm"
    t.string   "gym_tel"
    t.string   "gym_adr"
    t.integer  "rgn_cd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "gym_img"
  end

  create_table "gymusers", force: :cascade do |t|
    t.integer  "gym_no"
    t.integer  "user_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "gym_no"
    t.string   "rv_wr_id"
    t.datetime "rv_wr_tm"
    t.text     "rv_content"
    t.string   "rv_img"
    t.float    "rv_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id"
    t.string   "user_pw"
    t.string   "user_nm"
    t.string   "user_tel"
    t.date     "user_rgt_day"
    t.decimal  "rsd_rgn_cd"
    t.decimal  "mileage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
