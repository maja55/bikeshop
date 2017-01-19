class AddProductToLineitems < ActiveRecord::Migration[5.0]
  def change
    add_reference :lineitems, :product, foreign_key: true
  end
end
