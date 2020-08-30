class Trailer < ApplicationRecord
    belongs_to :truck
    has_one :unit 
    has_many :repairs
end
