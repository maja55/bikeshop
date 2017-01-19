class Order < ApplicationRecord
 has_many :lineitems
 belongs_to :user
end
