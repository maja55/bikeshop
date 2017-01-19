class Product < ApplicationRecord
  has_many :lineitems
  has_many :photos
end
