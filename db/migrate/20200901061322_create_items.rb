class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :cost, precision: 10, scale: 2
      t.string :description
      t.references :store, foreign_key: true
      t.timestamps
    end
  end
end
