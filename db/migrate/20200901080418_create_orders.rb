class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :quantity, precision: 10, scale: 3
      t.decimal :total_cost, precision: 10, scale: 2
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
