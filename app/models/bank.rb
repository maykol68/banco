class Bank < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :bank_account_number, presence: true, numericality: true, length: { maximum: 15 }

    has_many :supplier, dependent: :restrict_with_exception
end
