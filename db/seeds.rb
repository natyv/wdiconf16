# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Speaker.destroy_all
Sponsor.destroy_all

Speaker.create(name: 'LJ', description: 'LJ is an enthusiastic junior developer with a passion for creating responsive CSS layouts and hip hop music', image_url: 'LJ.png', talk: "How to run a hip hop website" )

Speaker.create(name: 'Nat', description: 'Nat is a great junior backend developer with a passion for getting kids interested in coding', image_url: 'Pranati.png', talk: "Ruby Basics" )

Speaker.create(name: 'Isha', description: 'Isha is a junior full stack web developer.', image_url: 'Isha.png', talk: "SVG and D3 basics - creating charts" )

Speaker.create(name: 'Christie', description: 'Christie is a business analyst turned full stack web devloper.', image_url: 'Christie.png', talk: "How to change careers" )

Speaker.create(name: 'Karina', description: 'Karina is a junior backend web developer who spends her free time training in circus skills ', image_url: 'Karina.png', talk: "How I found my passion for web development" )

Sponsor.create(company_name: 'Envato', first_name: "John", last_name: "Smith", email: "john@home.co", image_url: "https://company-profile-images.s3.amazonaws.com/images/438862/995116/logo/envato-logo.png", amount:"10000", website: "https://envato.com/")

Sponsor.create(company_name: 'Red Bubble', first_name: "John", last_name: "Smith", email: "john@home.co", image_url: "http://static1.squarespace.com/static/5011a7b6c4aa47afb91e3501/t/5629cd14e4b07c69536e284c/1445580052411/", amount:"5000", website: "http://www.redbubble.com/")

Sponsor.create(company_name: 'IE', first_name: "John", last_name: "Smith", email: "john@home.co", image_url: "http://www.ie.com.au/wp-content/themes/elision-child/assets/img/logo/logo-2015.jpg", amount:"5000", website: "http://www.ie.com.au/")

Sponsor.create(company_name: 'realestate.com.au', first_name: "John", last_name: "Smith", email: "john@home.co", image_url: "http://www.propertyobserver.com.au/images/3_StockBreakouts/Company-Logos/rea-aug-4-logo-breakout.png", amount:"5000", website: "http://www.realestate.com.au/")

Sponsor.create(company_name: 'Night Golf', first_name: "LJ", last_name: "Kenward", email: "lj@home.co", image_url: "https://cdn.shopify.com/s/files/1/0820/5063/t/3/assets/logo.png", amount:"2000", website: "http://nightgolfaustralia.com.au/")

Sponsor.create(company_name: 'BuildKite', first_name: "John", last_name: "Smith", email: "john@home.co", image_url: "http://dka575ofm4ao0.cloudfront.net/pages-transactional_logos/retina/1292/iukn7svdTeev16OTOu1U", amount:"2000", website: "https://buildkite.com/")

Sponsor.create(company_name: 'In a Rush', first_name: "John", last_name: "Smith", email: "john@home.co", image_url: "http://static.wpe.au.syrahost.com/var/m_a/a6/a64/898/4842-In-A-Rush-Logo%20-%20Copy.jpg", amount:"1000", website: "http://inarush.com.au/")
