#Eric Laroche

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#bundle exec rake db:seed
require 'csv'

CSV.foreach(Rails.root.join('lib', 'seeds', 'foods.csv'), headers: true) do |row|
  Food.create! do |food|
    food.REF_DATE = row[0]
    food.GEO = row[1]
    food.DGUID = row[2]
    food.Foodcategories = row[3]
    food.Commodity = row[4]
    food.UOM = row[5]
    food.UOM_ID = row[6]
    food.SCALAR_FACTOR = row[7]
    food.SCALAR_ID = row[8]
    food.VECTOR = row[9]
    food.COORDINATE = row[10]
    food.VALUE = row[11]
  end
end