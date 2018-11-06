require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'seeds.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Transaction.new

  t.commodity = row['commodity']
 
  t.save
  puts "#{t.commodity} saved"
end

puts "There are now #{Transaction.count} rows in the transactions table"