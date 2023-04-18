class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :nit
      t.string :Name_of_the_contact_person
      t.string :Contact_person_cell_phone_number

      t.timestamps
    end
  end
end
