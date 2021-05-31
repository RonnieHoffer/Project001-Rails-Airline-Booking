class Aircraft < ApplicationRecord
    has_many :flights
    has_many :airports, through: :flights
end
