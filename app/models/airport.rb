class Airport < ApplicationRecord
    has_many :flights
    has_many :aircrafts, through: :flights
end
