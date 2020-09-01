class Order < ApplicationRecord
  after_save :cal_total
  belongs_to :item
  validates :quantity, presence: true, numericality: { greater_than: 0, less_than: 100000000 }
  # validates :total_cost, presence: true, numericality: { greater_than: 0, less_than: 100000000 }

  def cal_total
    self.total_cost = self.quantity * self.item.cost
  end
end
