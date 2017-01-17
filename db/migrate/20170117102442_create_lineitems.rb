class CreateLineitems < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitems do |t|
      t.integer :count

      t.timestamps
    end
  end
end
