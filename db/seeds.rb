# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all


  Company.create(
    name: "Unsplash It",
    industry: "IT",
    address: "La Gare, Avenue Casgrain #102, Montréal, QC",
    user_id: 1,
    description: "Unsplash it is a small startup in Montreal focused on providing
    free images to web users. We care about our product and we care about our user experience.
    If you would like to work with us, please drop us a line."
    )

  Internship.create(
    name: "Dogwalker for CEO",
    responsibilities: "walking the dog 3 times a day, picking up poop, training the dog",
    qualifications: "being on time",
    length: 5,
    hours: 40,
    company_id: Company.find_by(name: "Unsplash It").id
    )
