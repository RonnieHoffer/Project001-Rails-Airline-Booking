class Flight < ApplicationRecord
    has_one :aircraft
    has_many :airports
    has_many :

end
