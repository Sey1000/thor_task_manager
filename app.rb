require "sqlite3"

dir = File.dirname(__FILE__)
DB = SQLite3::Database.new(File.join(dir, "db/tasks.db"))

Dir[File.join(dir, "app/*.rb")].each { |file| require file }

Router.new.run