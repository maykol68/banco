class Bank < ApplicationRecord
    validates :name, presence: true
    validates :bank_account_number, presence: true

    has_many :supplier, dependent: :restrict_with_exception
end
