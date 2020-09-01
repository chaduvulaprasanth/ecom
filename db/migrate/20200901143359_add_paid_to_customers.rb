class AddPaidToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :paid, :decimal, precision: 10, scale: 2
  end
end
