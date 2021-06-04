# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Aircraft.delete_all
Airport.delete_all
Booking.delete_all
Flight.delete_all
User.delete_all


aircraft_1 = Aircraft.create(model: "Boeing 737-800", economy_seats: 162, 
    business_seats: 12, first_class_seats: 0)
aircraft_2 = Aircraft.create(model: "Boeing 767-300ER", economy_seats: 219, 
    business_seats: 36, first_class_seats: 24)
aircraft_3 = Aircraft.create(model: "Boeing 787-9 Dreamliner", economy_seats: 204, 
    business_seats: 48, first_class_seats: 0)

airport_1 = Airport.create(city: "London", country: "UK")
airport_2 = Airport.create(city: "Paris", country: "France")

flight_1 = Flight.create(flight_number: 4559, aircraft_id: aircraft_1.id, 
    depart_airport_id: airport_1.id, arriv_airport_id: airport_2.id, 
    date: Date.parse("31/05/2021"), depart_time: "13:00", arriv_time: "13:55", 
    total_economy_seats: 162, total_business_seats: 12, total_first_class_seats: 0, 
    remaining_economy_seats: 162, remaining_business_seats: 12, remaining_first_class_seats: 0)

airport_1.flights << flight_1
airport_2.flights << flight_1

user_1 = User.create(email: "johndoe@gmail.com", password_digest: "johndoespassword")

booking_1 = Booking.create(user_id: user_1.id, flight_id: flight_1.id, economy_tickets: 6, 
    business_tickets: 0, first_class_tickets: 0, meat: 2, fish: 1, dairy: 2, vegan: 1)
