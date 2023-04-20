class Supplier < ApplicationRecord
    validates :name, presence: true
    validates :nit, presence: true, length: { is: 10} 
            #format: {
                #with: \((\d{9})\)-(\d{1}),
                #message: :invalid
    
    validates :Name_of_the_contact_person, presence: true
    validates :Contact_person_cell_phone_number, presence: true, length: {maximum: 10}

    belongs_to :bank
end
