class Account < ApplicationRecord
    has_one :truck
    has_many :transactions
    belongs_to :user
end
