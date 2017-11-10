# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
Application.destroy_all
Internship.destroy_all
User.destroy_all


    user1 = User.create(
    email: "test4@example.com",
    password: "bananas"
    )

    user2 = User.create(
    email: "test5@example.com",
    password: "bananas"
    )

    user3 = User.create(
    email: "test6@example.com",
    password: "bananas"
    )

    user4 = User.create(
    email: "test7@example.com",
    password: "bananas"
    )

    user5 = User.create(
      email: "test8@example.com",
      password: "bananas"
      )

  Company.create(
    name: "Quincy News",
    industry: "Broadcasting",
    address: "130 South 5th Street P.O. Box 909 Quincy, IL USA 62306",
    user_id: user1.id,
    description: "Quincy news is a small media company dedicated to honesty, journalistic integrity, and social justice reporting.
    We are looking for hard working reporters who are deliberate and thoughtful in their craft",
    photo: open("http://res.cloudinary.com/ddsp5wihh/image/upload/v1510152617/al5byj6qs8xzb6jfhuov.jpg")
    )

  Company.create(
    name: "Beer Nuts",
    industry: "Food Production",
    address: "103 N. Robinson Street, Bloomington, IL 61701",
    user_id: user2.id,
    description: "We specialize in making beer and delicious food. Please stop by and try our specials.",
    photo: open("http://res.cloudinary.com/ddsp5wihh/image/upload/v1510175680/wfhsfzkzasacfgveau36.jpg")
    )

  Company.create(
    name: "Hancock International",
    industry: "Import & Export",
    address: "351 S Main Pl, Carol Stream, IL",
    user_id: user3.id,
    description: "Hancock Internation is a small freight forwarder looking to improve your experience
    in exporting goods from the US to any country. As a small business, we care about our customers
    more than our competitors.",
    photo: open("https://res.cloudinary.com/ddsp5wihh/image/upload/v1510164667/oec_dcc98q.jpg")
    )

  Company.create(
    name: "OEC Group",
    industry: "Logistics & Supply Chain",
    address: "555 Pierce Itasca IL",
    user_id: user4.id,
    description: "We are a large logitics company helping you move freight. Originating in Taiwan,
    we specialize in imports from Asia and bring them right to your door.",
    photo: open("https://res.cloudinary.com/ddsp5wihh/image/upload/v1510164644/hancock_xu3pwk.jpg")
    )


  Internship.create(
    name: "Dogwalker for CEO",
    description: "We are looking for a dog walker for our CEO. Responsibilities include walking the dog 3 times a day,
    picking up poop, and training the dog. Candidate must have the capacity to arrive in a timely manner. This is
    a sensitive matter as the dog has IBS.",
    length: 5,
    hours: 40,
    company: Company.find_by(name: "Quincy News")
    )

  Internship.create(
    name: "File Scanner",
    description: "We are looking for a responsibile individual who is willing to scan files into our database for us.",
    length: 10,
    hours: 15,
    company: Company.find_by(name: "Hancock International")
    )

  Internship.create(
    name: "Documentation Specialist",
    description: "We are looking for someone who is willing to proofread all of our shipping instructions
    and bills of lading. We require you to be commited, well-organized, and responsible.",
    length: 6,
    hours: 20,
    company: Company.find_by(name: "OEC Group")
    )

  Internship.create(
    name: "Dishwasher",
    description: "We are looking for a dishwasher for our restaurant. This is someone who is interested in
    cuisine, is flexible, and willing to be available last minute.",
    length: 8,
    hours: 30,
    company: Company.find_by(name: "Beer Nuts")
    )

  Application.create(
    message: "I would like to apply as a Doc Specialist for OEC group",
    user: User.last,
    internship: Internship.find_by(name: "Documentation Specialist")
    )

  Application.create(
    message: "I would like to apply for Hancock International",
    user: User.last,
    internship: Internship.find_by(name: "File Scanner")
    )

  Application.create(
    message: "I would like to apply for Beer nuts",
    user: User.last,
    internship: Internship.find_by(name: "Dogwalker for CEO")
    )
