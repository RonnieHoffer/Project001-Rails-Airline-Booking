class CreateAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :airports do |t|
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
