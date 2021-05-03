class Owner < ApplicationRecord
    has_many :houses, dependent: :destroy
    has_many :contracts, through: :houses
end
