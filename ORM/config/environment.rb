require 'bundler'

Bundler.require


DB = {
  name: "Music Database",
  conn: SQLite3::Database.new('db/music.db')
}

DB[:conn].results_as_hash = true

require_relative '../lib/fan'
require 'pry'

