class AddInvocieToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :invoice, foreign_key: true
  end
end
