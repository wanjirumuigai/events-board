puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating staffs..."
staff1 =
  Staff.create(
    name: "Mary",
    email: "mary@arc.com",
    password: "1234",
    role: "Supervisor"
  )
staff2 =
  Staff.create(
    name: "Edwin",
    email: "edwin@arc.com",
    password: "2345",
    role: "IT"
  )
staff3 =
  Staff.create(
    name: "Liza",
    email: "liza@arc.com",
    password: "3456",
    role: "Catering"
  )
staff4 =
  Staff.create(
    name: "Newton",
    email: "newton@arc.com",
    password: "1234",
    role: "Housekeeping"
  )
staff5 =
  Staff.create(
    name: "Ben",
    email: "ben@arc.com",
    password: "1234",
    role: "Supervisor"
  )
staff6 =
  Staff.create(
    name: "Fabian",
    email: "fabian@arc.com",
    password: "2345",
    role: "IT"
  )
staff7 =
  Staff.create(
    name: "Shem",
    email: "shem@arc.com",
    password: "3456",
    role: "Catering"
  )
staff8 =
  Staff.create(
    name: "Vic",
    email: "vic@arc.com",
    password: "1234",
    role: "Housekeeping"
  )
event_staff1 =
  EventStaff.create(
    supervisor_id: staff1.id,
    it_id: staff2.id,
    housekeeper_id: staff4.id,
    catering_id: staff3.id
  )
event_staff2 =
  EventStaff.create(
    supervisor_id: staff4.id,
    it_id: staff5.id,
    housekeeper_id: staff4.id,
    catering_id: staff8.id
  )

venue1 = Venue.create(name: "Dias", capacity: 500)
venue2 = Venue.create(name: "Kifaru", capacity: 15)
venue3 = Venue.create(name: "Simba", capacity: 20)
venue4 = Venue.create(name: "Seneiya", capacity: 100)

event1 =
  Event.create(
    name: "Carol and John Wedding",
    event_type: "Wedding",
    number_of_participants: 300,
    status: "Confirmed",
    venue_id: 1,
    event_staff_id: event_staff1.id
  )
event2 =
  Event.create(
    name: "LoW Conference",
    event_type: "Conference",
    number_of_participants: 80,
    status: "Confirmed",
    venue_id: 4,
    event_staff_id: event_staff1.id
  )

puts "✅ Done seeding!"
