# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Task.create(
  title: 'Do the Laundry',
  description: 'Do not forget to separate colors from white!'
)
Task.create(
  title: 'Grocery shopping',
  description: 'Eggs, chia seeds, bread, veggies'
)
Task.create(
  title: 'Take the dogs out',
  description: 'Freyja needs to be dropped later tonight'
)

