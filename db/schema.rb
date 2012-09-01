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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120831213332) do

  create_table "meetings", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "room_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "meetings", ["room_id"], :name => "index_meetings_on_room_id"

  create_table "meetings_participants", :id => false, :force => true do |t|
    t.integer "participant_id", :null => false
    t.integer "meeting_id",     :null => false
  end

  add_index "meetings_participants", ["participant_id", "meeting_id"], :name => "index_meetings_participants_on_participant_id_and_meeting_id", :unique => true

  create_table "participants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
