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

ActiveRecord::Schema.define(version: 2021_10_05_162638) do

  create_table "bringings", force: :cascade do |t|
    t.date "day"
    t.string "title"
    t.string "bringing"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.boolean "week"
  end

  create_table "sub10jects", force: :cascade do |t|
    t.string "title10"
    t.string "teacher10"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub11jects", force: :cascade do |t|
    t.string "title11"
    t.string "teacher11"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub12jects", force: :cascade do |t|
    t.string "title12"
    t.string "teacher12"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub13jects", force: :cascade do |t|
    t.string "title13"
    t.string "teacher13"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub14jects", force: :cascade do |t|
    t.string "title14"
    t.string "teacher14"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub15jects", force: :cascade do |t|
    t.string "title15"
    t.string "teacher15"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub16jects", force: :cascade do |t|
    t.string "title16"
    t.string "teacher16"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub17jects", force: :cascade do |t|
    t.string "title17"
    t.string "teacher17"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub18jects", force: :cascade do |t|
    t.string "title18"
    t.string "teacher18"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub19jects", force: :cascade do |t|
    t.string "title19"
    t.string "teacher19"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub1jects", force: :cascade do |t|
    t.string "title1"
    t.string "teather1"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "sub20jects", force: :cascade do |t|
    t.string "title20"
    t.string "teacher20"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub21jects", force: :cascade do |t|
    t.string "title21"
    t.string "teacher21"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub22jects", force: :cascade do |t|
    t.string "title22"
    t.string "teacher22"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub23jects", force: :cascade do |t|
    t.string "title23"
    t.string "teacher23"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub24jects", force: :cascade do |t|
    t.string "title24"
    t.string "teacher24"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub25jects", force: :cascade do |t|
    t.string "title25"
    t.string "teacher25"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub26jects", force: :cascade do |t|
    t.string "title26"
    t.string "teacher26"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub27jects", force: :cascade do |t|
    t.string "title27"
    t.string "teacher27"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub28jects", force: :cascade do |t|
    t.string "title28"
    t.string "teacher28"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub29jects", force: :cascade do |t|
    t.string "title29"
    t.string "teacher29"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub2jects", force: :cascade do |t|
    t.string "title2"
    t.string "teacher2"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub3jects", force: :cascade do |t|
    t.string "title3"
    t.string "teacher3"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub4jects", force: :cascade do |t|
    t.string "title4"
    t.string "teacher4"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub5jects", force: :cascade do |t|
    t.string "title5"
    t.string "teacher5"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub6jects", force: :cascade do |t|
    t.string "title6"
    t.string "teacher6"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub7jects", force: :cascade do |t|
    t.string "title7"
    t.string "teacher7"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub8jects", force: :cascade do |t|
    t.string "title8"
    t.string "teacher8"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub9jects", force: :cascade do |t|
    t.string "title9"
    t.string "teacher9"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.string "teacher"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "title1"
    t.string "teather1"
    t.string "title2"
    t.string "teacher2"
    t.string "title3"
    t.string "teacher3"
    t.string "title4"
    t.string "teacher4"
    t.string "title5"
    t.string "teacher5"
    t.string "title6"
    t.string "teacher6"
    t.string "title7"
    t.string "teacher7"
    t.string "title8"
    t.string "teacher8"
    t.string "title9"
    t.string "teacher9"
    t.string "title10"
    t.string "teacher10"
    t.string "title11"
    t.string "teacher11"
    t.string "title12"
    t.string "teacher12"
    t.string "title13"
    t.string "teacher13"
    t.string "title14"
    t.string "teacher14"
    t.string "title15"
    t.string "teacher15"
    t.string "title16"
    t.string "teacher16"
    t.string "title17"
    t.string "teacher17"
    t.string "title18"
    t.string "teacher18"
    t.string "title19"
    t.string "teacher19"
    t.string "title20"
    t.string "teacher20"
    t.string "title21"
    t.string "teacher21"
    t.string "title22"
    t.string "teacher22"
    t.string "title23"
    t.string "teacher23"
    t.string "title24"
    t.string "teacher24"
    t.string "title25"
    t.string "teacher25"
    t.string "title26"
    t.string "teacher26"
    t.string "title27"
    t.string "teacher27"
    t.string "title28"
    t.string "teacher28"
    t.string "title29"
    t.string "teacher29"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "done"
    t.datetime "deadline"
  end

  create_table "todays", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "twotasks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
