# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_180_904_010_645) do
  create_table 'leads', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'email', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'title', limit: 60, default: '', null: false
    t.string 'career', limit: 60, default: '', null: false
    t.string 'institution', limit: 60, default: '', null: false
    t.string 'address', limit: 60, default: '', null: false
    t.string 'city', limit: 60, default: '', null: false
    t.string 'postal_code', limit: 60, default: '', null: false
    t.string 'country', limit: 60, default: '', null: false
    t.string 'phone_number', limit: 60, default: '', null: false
    t.boolean 'student', default: false
    t.integer 'paper'
    t.integer 'symposium'
    t.integer 'table_discussion'
  end

  create_table 'users', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email', null: false
    t.string 'encrypted_password', limit: 128, null: false
    t.string 'confirmation_token', limit: 128
    t.string 'remember_token', limit: 128, null: false
    t.index ['email'], name: 'index_users_on_email'
    t.index ['remember_token'], name: 'index_users_on_remember_token'
  end
end
