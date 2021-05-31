class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :flight_id
      t.integer :economy_tickets
      t.integer :business_tickets
      t.integer :first_class_tickets
      t.integer :meat
      t.integer :fish
      t.integer :dairy
      t.integer :vegan

      t.timestamps
    end
  end
end
