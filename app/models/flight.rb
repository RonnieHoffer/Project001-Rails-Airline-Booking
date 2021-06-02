class Flight < ApplicationRecord
    has_many :bookings
    has_many :users, through: :bookings
    has_and_belongs_to_many :airports
    belongs_to :aircraft
end
