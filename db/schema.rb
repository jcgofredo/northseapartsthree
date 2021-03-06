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

ActiveRecord::Schema.define(version: 20170201005033) do

  create_table "associated_files", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description",   limit: 512
    t.string   "name",          limit: 64
    t.string   "file",          limit: 512
    t.string   "fileable_id",   limit: 36
    t.string   "fileable_type"
    t.index ["deleted_at"], name: "index_associated_files_on_deleted_at", using: :btree
  end

  create_table "associated_images", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description",    limit: 512
    t.string   "name",           limit: 64
    t.string   "image",          limit: 512
    t.string   "imageable_id",   limit: 36
    t.string   "imageable_type"
    t.index ["deleted_at"], name: "index_associated_images_on_deleted_at", using: :btree
  end

  create_table "attendance_records", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employee_id",        limit: 36
    t.string   "remark",             limit: 64
    t.date     "date_of_attendance"
    t.time     "time_in"
    t.time     "time_out"
    t.index ["deleted_at"], name: "index_attendance_records_on_deleted_at", using: :btree
  end

  create_table "biodata", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employee_id",            limit: 36
    t.string   "name_of_mother",         limit: 256
    t.string   "name_of_father",         limit: 256
    t.string   "dependents",             limit: 256
    t.string   "complexion",             limit: 64
    t.string   "height",                 limit: 64
    t.string   "sex",                    limit: 64
    t.string   "blood_type",             limit: 64
    t.date     "date_of_birth"
    t.string   "education",              limit: 256
    t.string   "experience",             limit: 256
    t.string   "notable_accomplishment", limit: 256
    t.string   "description",            limit: 512
    t.index ["date_of_birth"], name: "index_biodata_on_date_of_birth", using: :btree
    t.index ["deleted_at"], name: "index_biodata_on_deleted_at", using: :btree
  end

  create_table "branches", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",        limit: 64
    t.string   "description", limit: 512
    t.index ["deleted_at"], name: "index_branches_on_deleted_at", using: :btree
  end

  create_table "contact_details", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label",            limit: 64
    t.string   "contactable_id",   limit: 36
    t.string   "contactable_type"
    t.index ["contactable_type", "contactable_id"], name: "index_contact_details_on_contactable_type_and_contactable_id", using: :btree
    t.index ["deleted_at"], name: "index_contact_details_on_deleted_at", using: :btree
  end

  create_table "employee_statuses", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employee_id",    limit: 36
    t.date     "implemented_at"
    t.string   "remark",         limit: 64
    t.string   "state",          limit: 64
    t.index ["deleted_at"], name: "index_employee_statuses_on_deleted_at", using: :btree
  end

  create_table "employees", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "system_account_id", limit: 36
    t.string   "branch_id",         limit: 36
    t.string   "position",          limit: 64
    t.index ["deleted_at"], name: "index_employees_on_deleted_at", using: :btree
  end

  create_table "links", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "service",           limit: 64
    t.string   "url",               limit: 512
    t.string   "contact_detail_id", limit: 36
    t.string   "remark",            limit: 64
    t.index ["deleted_at"], name: "index_links_on_deleted_at", using: :btree
  end

  create_table "locations", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "longitude",         limit: 256
    t.string   "latitude",          limit: 256
    t.string   "address",           limit: 512
    t.string   "contact_detail_id", limit: 36
    t.index ["deleted_at"], name: "index_locations_on_deleted_at", using: :btree
  end

  create_table "system_accounts", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",          limit: 64
    t.string   "description",   limit: 512
    t.string   "account_type",  limit: 64
    t.string   "primary_image", limit: 512
    t.index ["deleted_at"], name: "index_system_accounts_on_deleted_at", using: :btree
  end

  create_table "system_constants", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label",         limit: 64
    t.string   "category_type", limit: 256
    t.string   "value",         limit: 256
    t.index ["deleted_at"], name: "index_system_constants_on_deleted_at", using: :btree
  end

  create_table "telephone_numbers", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "digits",            limit: 64
    t.string   "contact_detail_id", limit: 36
    t.string   "remark",            limit: 64
    t.index ["deleted_at"], name: "index_telephone_numbers_on_deleted_at", using: :btree
  end

  create_table "vehicles", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color",                limit: 64
    t.string   "make",                 limit: 64
    t.string   "brand",                limit: 64
    t.string   "plate_number",         limit: 64
    t.string   "fuel_type",            limit: 64
    t.string   "description",          limit: 512
    t.date     "date_of_registration"
    t.string   "primary_image",        limit: 512
    t.index ["deleted_at"], name: "index_vehicles_on_deleted_at", using: :btree
  end

end
