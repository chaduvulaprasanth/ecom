class Store < ApplicationRecord
  has_many :customers, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :invoices, dependent: :destroy
  validates :name, presence: true, length: { minimum: 5, maximum: 50}
end
