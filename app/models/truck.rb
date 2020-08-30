class Truck < ApplicationRecord
    belongs_to :account
    has_one :trailer
    has_many :repairs
end
