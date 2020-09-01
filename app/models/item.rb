class Item < ApplicationRecord
  belongs_to :store
  validates :name, presence: :true
  validates :cost, presence: :true, numericality: { greater_than: 0, less_than: 100000000 }
end
