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
    industry: "Graphic Design",
    address: "La Gare, Avenue Casgrain #102, Montréal, QC",
    user_id: User.last.id,
    description: "Unsplash it is a small startup in Montreal focused on providing
    free images to web users. We care about our product and we care about our user experience.
    If you would like to work with us, please drop us a line."
    )

  Company.create(
    name: "Il Bastardo",
    industry: "Food Production",
    address: "Old Port of Montreal",
    user_id: User.last.id,
    description: "We specialize in making wines and delicious food. Please stop by and try our specials."
    )

  Company.create(
    name: "Hancock International",
    industry: "Import & Export",
    address: "351 S Main Pl, Carol Stream, IL",
    user_id: User.last.id,
    description: "Hancock Internation is a small freight forwarder looking to improve your experience
    in exporting goods from the US to any country. As a small business, we care about our customers
    more than our competitors."
    )

  Company.create(
    name: "OEC Group",
    industry: "Logistics & Supply Chain",
    address: "555 Pierce Itasca IL",
    user_id: User.last.id,
    description: "We are a large logitics company helping you move freight. Originating in Taiwan,
    we specialize in imports from Asia and bring them right to your door."
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

  Internship.create(
    name: "File Scanner",
    description: "We are looking for a responsibile individual who is willing to scan files into our database for us.",
    length: 10,
    hours: 15,
    company_id: Company.find_by(name: "Hancock International").id
    )

  Internship.create(
    name: "Documentation Specialist",
    description: "We are looking for someone who is willing to proofread all of our shipping instructions
    and bills of lading. We require you to be commited, well-organized, and responsible.",
    length: 6,
    hours: 20,
    company_id: Company.find_by(name: "OEC Group").id
    )

  Internship.create(
    name: "Dishwasher",
    description: "We are looking for a dishwasher for our restaurant. This is someone who is interested in
    cuisine, is flexible, and willing to be available last minute.",
    length: 8,
    hours: 30,
    company_id: Company.find_by(name: "Il Bastardo").id
    )
