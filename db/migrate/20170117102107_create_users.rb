class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :street-housenr
      t.string :postcode
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
