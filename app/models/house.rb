class House < ApplicationRecord
  belongs_to :owner
  has_many :contracts, dependent: :destroy
end
