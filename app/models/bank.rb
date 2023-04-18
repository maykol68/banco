class Bank < ApplicationRecord
    validates :name, presence: true
    validates :bank_account_number, presence: true
end
