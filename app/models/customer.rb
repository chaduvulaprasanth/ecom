class Customer < ApplicationRecord
  belongs_to :store
  has_many :invoices, dependent: :destroy
  validates :name, presence: true
end
