class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :store
  has_many :orders, dependent: :destroy
end
