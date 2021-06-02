class CreateJoinTableAirportsFlights < ActiveRecord::Migration[6.0]
  def change
    create_join_table :airports, :flights do |t|
      # t.index [:airport_id, :flight_id]
      # t.index [:flight_id, :airport_id]
    end
  end
end
