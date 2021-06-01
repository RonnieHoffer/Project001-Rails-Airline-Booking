class Airport < ApplicationRecord
    has_and_belongs_to_many :flights
    has_many :aircrafts, through: :flights
end
