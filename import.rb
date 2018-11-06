require 'rubygems'
require 'csv'
require 'active_record'
require 'sqlite3'

ActiveRecord::Base.configurations = YAML::load(DATA)
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3', # or 'postgresql' or 'sqlite3' or 'oracle_enhanced'
  database: 'db/development.sqlite3'

)
class Record < ActiveRecord::Base
  self.foods = "foods" # <=== REPLACE THIS with your table name
end

CSV.foreach ARGV[0], :headers => true do |row|
  print "."
  hash = Hash[row]
  hash.delete("updated_at")
  hash.delete("created_at")
  Record.create! hash
end

puts "\nDone."

__END__
