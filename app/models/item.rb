class Item < ApplicationRecord
  belongs_to :store
  validates :name, presence: :true
  validates :cost, presence: :true, numericality: { only_integer: true }
end
