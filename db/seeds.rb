# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Speaker.destroy_all
Sponsor.destroy_all

Speaker.create(name: 'LJ', description: 'LJ is a traveller at heart and programmer in heat. With a Hip Hop background LJ bashes out brackets like DJs bang out beats', image_url: 'LJ.png', talk: "Selling Success is The Path To Success")

Speaker.create(name: 'Nat', description: 'Pranati is a software developer from India. Such a cliche! She is passionate about getting kids coding and getting more girls into STEM. When she is not coding, you’ll probably find her checking out some interesting restaurant in Melbourne. Griping about the weather is her favourite pastime.', image_url: 'Pranati.png', talk: "Keynote: Contributing to Open Source as a Junior" )

Speaker.create(name: 'Isha', description: 'Isha is a full stack developer. She is passionate about learning new technologies, and sees software development as an powerful tool for the creation.', image_url: 'Isha.png', talk: "Data Visualisation: How to Creatively Display Charts on Websites." )

Speaker.create(name: 'Christie', description: 'Christie is a kiwi born web developer living and working in Melbourne. Before making the career change, she worked a Business Analyst. When she’s not sitting in front of her computer, you’ll probably find Christie with her head in a good book, annoying her senile cat, or gallivanting down the Great Ocean Road in the weekend.', image_url: 'Christie.png', talk: "You Code Like a Girl. Good for you!" )

Speaker.create(name: 'Karina', description: "Karina has finally found her passion for code after spending her 20s in less than satisfying jobs and having lots of fun exploring the world. Outside of web development, she spends her time practicing circus skills and enjoying Melbourne's many cafes.", image_url: 'Karina.png', talk: "Learning to Code - The Non-Code Skills I've Learned Along the Way")

Sponsor.create(company_name: 'Envato', first_name: "Bill", last_name: "Williams", email: "bill@envato.co", image_url: "https://company-profile-images.s3.amazonaws.com/images/438862/995116/logo/envato-logo.png", amount:"10000", website: "https://envato.com/")

Sponsor.create(company_name: 'Red Bubble', first_name: "Sarah", last_name: "Smithers", email: "sarah@rb.co", image_url: "http://static1.squarespace.com/static/5011a7b6c4aa47afb91e3501/t/5629cd14e4b07c69536e284c/1445580052411/", amount:"5000", website: "http://www.redbubble.com/")

Sponsor.create(company_name: 'IE', first_name: "John", last_name: "Smith", email: "john@home.co", image_url: "http://www.ie.com.au/wp-content/themes/elision-child/assets/img/logo/logo-2015.jpg", amount:"5000", website: "http://www.ie.com.au/")

Sponsor.create(company_name: 'realestate.com.au', first_name: "Terry", last_name: "Height", email: "terry@rea.co", image_url: "http://www.propertyobserver.com.au/images/3_StockBreakouts/Company-Logos/rea-aug-4-logo-breakout.png", amount:"5000", website: "http://www.realestate.com.au/")

Sponsor.create(company_name: 'Night Golf', first_name: "LJ", last_name: "Kenward", email: "lj@ng.co", image_url: "https://cdn.shopify.com/s/files/1/0820/5063/t/3/assets/logo.png", amount:"2000", website: "http://nightgolfaustralia.com.au/")

Sponsor.create(company_name: 'BuildKite', first_name: "Tim", last_name: "Tomkins", email: "tim@bk.co", image_url: "http://dka575ofm4ao0.cloudfront.net/pages-transactional_logos/retina/1292/iukn7svdTeev16OTOu1U", amount:"2000", website: "https://buildkite.com/")

Sponsor.create(company_name: 'In a Rush', first_name: "Annalise", last_name: "Anders", email: "a@inarush.co", image_url: "http://static.wpe.au.syrahost.com/var/m_a/a6/a64/898/4842-In-A-Rush-Logo%20-%20Copy.jpg", amount:"1000", website: "http://inarush.com.au/")
