# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100430115841) do

  create_table "audits", :force => true do |t|
    t.string   "url"
    t.string   "ipaddress"
    t.string   "log"
    t.boolean  "ajax"
    t.string   "username"
    t.string   "params"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "brew_entries", :force => true do |t|
    t.date     "brew_date"
    t.text     "comment"
    t.float    "actual_fg"
    t.date     "bottled_kegged"
    t.float    "actual_og"
    t.float    "volume_to_ferementer"
    t.float    "pitching_temp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
    t.integer  "user_id"
    t.float    "rating"
    t.float    "boiler_loses"
    t.float    "evaporation_rate"
    t.integer  "boil_time"
    t.string   "sparge_method"
    t.integer  "no_batches"
    t.float    "batch1_volume"
    t.float    "batch1_gravity_actual"
    t.float    "batch1_volume_actual"
    t.float    "batch2_volume"
    t.float    "batch2_gravity_actual"
    t.float    "batch2_volume_actual"
    t.float    "batch3_volume"
    t.float    "batch3_gravity_actual"
    t.float    "batch3_volume_actual"
    t.float    "batch4_volume"
    t.float    "batch4_gravity_actual"
    t.float    "batch4_volume_actual"
    t.float    "preboil_gravity_actual"
    t.float    "preboil_volume_actual"
    t.float    "postboil_gravity_actual"
    t.float    "postboil_volume_actual"
    t.float    "liquor_to_grist"
    t.float    "absorbtion_rate"
    t.float    "mash_conversion"
    t.float    "volume_from_mash"
    t.float    "volume_to_boil"
    t.float    "mash_dead_space"
    t.float    "actual_colour"
    t.integer  "brewery_id"
    t.float    "ambient_temp"
    t.float    "actual_extract_volume"
    t.float    "actual_extract_sg"
  end

  add_index "brew_entries", ["brew_date"], :name => "brew_date"

  create_table "brew_entry_logs", :force => true do |t|
    t.datetime "log_date"
    t.text     "comment"
    t.string   "log_type"
    t.float    "specific_gravity"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brew_entry_id"
    t.integer  "user_id"
    t.float    "temperature"
  end

  create_table "breweries", :force => true do |t|
    t.string   "name"
    t.float    "capacity"
    t.float    "efficency"
    t.boolean  "isDefault"
    t.boolean  "isAllGrain"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.float    "liquor_to_grist"
    t.integer  "boil_time"
    t.float    "mash_tun_capacity"
    t.float    "mash_tun_deadspace"
    t.float    "evapouration_rate"
    t.float    "boiler_loses"
    t.text     "description"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "designator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fermentable_types", :force => true do |t|
    t.string   "name"
    t.float    "yeild"
    t.boolean  "converted"
    t.boolean  "fullyfermentable"
    t.float    "colour"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.boolean  "mashed"
  end

  create_table "fermentables", :force => true do |t|
    t.float    "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
    t.integer  "fermentable_type_id"
    t.boolean  "lock_weight"
  end

  create_table "hop_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.float    "aa"
    t.string   "hop_use"
    t.string   "hop_use_type"
    t.float    "beta"
    t.float    "hsi"
    t.text     "origin"
    t.float    "humulene"
    t.float    "caryophllene"
    t.float    "cohumulone"
    t.float    "myrcene"
  end

  create_table "hops", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "minutes"
    t.float    "aa"
    t.float    "ibu_l"
    t.float    "dry_hop_amount_l"
    t.text     "notes"
    t.integer  "recipe_id"
    t.integer  "hop_type_id"
    t.string   "hop_use"
    t.string   "hop_use_type"
    t.string   "hop_form"
    t.float    "beta"
    t.float    "humulene"
    t.float    "caryophllene"
    t.float    "cohumulone"
    t.float    "myrcene"
    t.boolean  "lock_weight"
  end

  create_table "ingredient_unit_preferences", :force => true do |t|
    t.string   "hops"
    t.string   "fermentable"
    t.string   "volume"
    t.string   "wateradditions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "temperature"
    t.string   "gravity"
    t.string   "hop_utilisation_method"
    t.string   "liquor_to_grist"
  end

  create_table "kit_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.float    "points"
    t.float    "yeild"
    t.float    "ibus"
    t.float    "colour"
    t.float    "volume"
    t.float    "weight"
    t.text     "description"
    t.float    "designed_volume"
    t.string   "kit_type"
  end

  create_table "kits", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
    t.float    "quantity"
    t.integer  "kit_type_id"
  end

  create_table "mash_steps", :force => true do |t|
    t.string   "name"
    t.float    "temperature"
    t.integer  "time"
    t.string   "steptype"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
    t.float    "liquor_to_grist"
    t.float    "addition_amount"
    t.float    "addition_temp"
  end

  create_table "misc_ingredient_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "misc_ingredients", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "misc_type"
    t.string   "misc_use"
    t.float    "time"
    t.float    "amount_l"
    t.boolean  "is_solid"
    t.string   "use_for"
    t.text     "notes"
    t.integer  "recipe_id"
  end

  create_table "recipe_shareds", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_updated"
    t.integer  "recipe_id"
  end

  create_table "recipe_user_shareds", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shared_state"
    t.boolean  "can_edit"
    t.boolean  "can_invite"
    t.boolean  "can_update_message_log"
    t.boolean  "can_email_group"
    t.string   "notification_type"
    t.datetime "last_notified"
    t.integer  "recipe_shared_id"
    t.integer  "user_id"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.string   "genealogy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "style_id"
    t.text     "description"
    t.float    "volume"
    t.float    "efficency"
    t.float    "rating"
    t.string   "recipe_type"
    t.integer  "brew_entry_id"
    t.string   "hop_utilisation_method"
    t.boolean  "hop_cubed"
    t.boolean  "locked"
  end

  add_index "recipes", ["name"], :name => "name"

  create_table "schema_info", :id => false, :force => true do |t|
    t.integer "version"
  end

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.string   "designator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_address"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
    t.boolean  "default_locked_recipes",                  :default => false
  end

  create_table "yeast_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.float    "min_temp"
    t.float    "max_temp"
    t.string   "flocculation"
    t.float    "attenuation"
    t.string   "alcohol_tollerance"
  end

  create_table "yeasts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "amount_to_pitch"
    t.float    "amount_to_pitch_min"
    t.float    "amount_to_pitch_max"
    t.text     "notes"
    t.integer  "recipe_id"
    t.integer  "yeast_type_id"
  end

end
