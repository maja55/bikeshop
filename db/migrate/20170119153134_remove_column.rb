class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :order_id
  end
end
