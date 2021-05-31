class CreateAircrafts < ActiveRecord::Migration[6.0]
  def change
    create_table :aircrafts do |t|
      t.string :type
      t.integer :economy_seats
      t.integer :business_seats
      t.integer :first_class_seats

      t.timestamps
    end
  end
end
