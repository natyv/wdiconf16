# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Speaker.create(name: 'LJ', description: 'LJ is an enthusiastic junior developer with a passion for creating responsive CSS layouts and hip hop music', image_url: 'http://placehold.it/150x150', talk: "How to run a hip hop website" )

Speaker.create(name: 'Nat', description: 'Nat is a great junior backend developer with a passion for getting kids interested in coding', image_url: 'http://placehold.it/150x150', talk: "Ruby Basics" )

Speaker.create(name: 'Isha', description: 'Isha is a junior full stack web developer.', image_url: 'http://placehold.it/150x150', talk: "SVG and D3 basics - creating charts" )

Speaker.create(name: 'Christie', description: 'Christie is a business analyst turned full stack web devloper.', image_url: 'http://placehold.it/150x150', talk: "How to change careers" )

Speaker.create(name: 'Karina', description: 'Karina is a junior backend web developer who spends her free time training in circus skills ', image_url: 'http://placehold.it/150x150', talk: "How I found my passion for web development" )
