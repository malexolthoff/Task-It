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
    user_id: User.last.id,
    description: "Unsplash it is a small startup in Montreal focused on providing
    free images to web users. We care about our product and we care about our user experience.
    If you would like to work with us, please drop us a line.",
    photo: "https://images.unsplash.com/photo-1461988625982-7e46a099bf4f?auto=format&fit=crop&w=1950&q=60&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D"
    )

  Internship.create(
    name: "Dogwalker for CEO",
    description: "We are looking for a dog walker for our CEO. Responsibilities include walking the dog 3 times a day,
    picking up poop, and training the dog. Candidate must have the capacity to arrive in a timely manner. This is
    a sensitive matter as the dog has IBS.",
    length: 5,
    hours: 40,
    company_id: Company.find_by(name: "Unsplash It").id
    )
