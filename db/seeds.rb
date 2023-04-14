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
    role: "Housekeeper"
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
    role: "Housekeeper"
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
venue5 = Venue.create(name: "Football Field", capacity: 500)
venue6 = Venue.create(name: "Lagatt Hall", capacity: 500)

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
  event3 =
  Event.create(
    name: "KiBco Graduation",
    event_type: "Internal",
    number_of_participants: 300,
    status: "Confirmed",
    venue_id: 2,
    event_staff_id: event_staff2.id
  )
event4 =
  Event.create(
    name: "Therapists Beyond Borders Workshop",
    event_type: "Internal",
    number_of_participants: 80,
    status: "Confirmed",
    venue_id: 4,
    event_staff_id: event_staff1.id
  )
  event5 =
  Event.create(
    name: " MGA Sports Day",
    event_type: "Internal",
    number_of_participants: 300,
    status: "Confirmed",
    venue_id: 5,
    event_staff_id: event_staff2.id
  )
event6 =
  Event.create(
    name: "Steve and Stephanie Wedding",
    event_type: "Internal",
    number_of_participants: 100,
    status: "Confirmed",
    venue_id: 6,
    event_staff_id: event_staff1.id
  )
  event7 =
  Event.create(
    name: "Funkids Entertainment",
    event_type: "Internal",
    number_of_participants: 300,
    status: "Confirmed",
    venue_id: 6,
    event_staff_id: event_staff2.id
  )
event8 =
  Event.create(
    name: "Therapists Beyond Borders Workshop",
    event_type: "Internal",
    number_of_participants: 80,
    status: "Confirmed",
    venue_id: 4,
    event_staff_id: event_staff1.id
  )

puts "✅ Done seeding!"
