class Locator < ApplicationRecord
    has_many :contracts, dependent: :destroy
end
