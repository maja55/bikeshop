class Lineitem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :count, numericality: { only_integer: true, greater_than: 0 }
  validates :order, allow_blank: true
end
