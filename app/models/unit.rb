class Unit < ApplicationRecord
    has_many :repairs
    belongs_to :trailer
end
