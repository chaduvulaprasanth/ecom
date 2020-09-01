class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.decimal :total, precision: 10, scale: 2
      t.decimal :paid, precision: 10, scale: 2
      t.decimal :balance, precision: 10, scale: 2
      t.references :customer, foreign_key: true
      t.references :store, foreign_key: true
      t.timestamps
    end
  end
end
