class Truck < ApplicationRecord
    belongs_to :account
    has_many :repairs
end
