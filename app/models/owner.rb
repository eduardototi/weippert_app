class Owner < ApplicationRecord
    has_many :houses, dependent: :destroy
end
