class AddBankToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_reference :suppliers, :bank, null: false, foreign_key: true
  end
end
