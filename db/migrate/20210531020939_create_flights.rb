class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.integer :aircraft_id
      t.integer :depart_airport_id
      t.integer :arriv_airport_id
      t.date :date
      t.time :depart_time
      t.time :arriv_time
      t.integer :total_economy_seats
      t.integer :total_business_seats
      t.integer :total_first_class_seats
      t.integer :remaining_economy_seats
      t.integer :remaining_business_seats
      t.integer :remaining_first_class_seats

      t.timestamps
    end
  end
end
