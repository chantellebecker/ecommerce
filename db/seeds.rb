# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create([
	{name: 'Macbook', price: 1000.24, description: 'Excellent laptop', promoted: true, quantity: 24, email: 'email@email.com'},
	{name: 'Chromebook', price: 325.99, description: 'Amazing value', promoted: true, quantity: 11, email: 'email@email.com'}
	])	
