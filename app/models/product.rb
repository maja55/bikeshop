class Product < ApplicationRecord
  scope :mountainbike, -> {where(:category => 'mountainbike')}

  def mountainbike
    return Product.mountainbike
  end
end
