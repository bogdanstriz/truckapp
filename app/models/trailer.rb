class Trailer < ApplicationRecord
    belongs_to :account
    has_one :unit 
    has_many :repairs
end
