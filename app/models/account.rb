class Account < ApplicationRecord
    has_one :truck
    has_one :trailer
    has_many :transactions
    belongs_to :user
end
