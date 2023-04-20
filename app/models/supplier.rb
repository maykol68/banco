class Supplier < ApplicationRecord
    validates :name,    presence: true
    validates :nit, presence: true
    validates :Name_of_the_contact_person, presence: true
    validates :Contact_person_cell_phone_number, presence: true

    belongs_to :bank
end
