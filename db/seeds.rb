# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
backscratchers = Backscratcher.create([
    { name: 'The Itcher', description: 'The best one', price: '$19.99', sizes: ['L', 'XL']}, 
    { name: 'The Scratcher', description: 'Does the job', price: '$9.99', sizes: ['M', 'L']}, 
])