class RemoveColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :street_housenr, :string
    remove_column :users, :postcode, :string
    remove_column :users, :city, :string
    remove_column :users, :country, :string
    remove_column :users, :created_at, :datetime
    remove_column :users, :updated_at, :datetime
  end
end
