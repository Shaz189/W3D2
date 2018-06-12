require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
COLORS = ['black', 'yellow', 'green']
GENDER = ['M', 'F']

5.times do
  Cat.create(
    name: Faker::Name.first_name, 
    birth_date: Faker::Date.birthday(1, 20), 
    color: COLORS[rand(0..2)],
    sex: GENDER[rand(0..1)],
    description: Faker::Friends.quote
    )
end