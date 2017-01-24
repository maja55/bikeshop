class Order < ApplicationRecord
 has_many :lineitems
 has_many :products, through: :lineitems
 belongs_to :user
end
