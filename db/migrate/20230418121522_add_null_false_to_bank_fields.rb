class AddNullFalseToBankFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :banks, :name, false
    change_column_null :banks, :bank_account_number, false
  end
end
