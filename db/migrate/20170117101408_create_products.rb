class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :model
      t.string :brand
      t.float :price
      t.string :category
      t.string :gender
      t.integer :frame

      t.timestamps
    end
  end
end
