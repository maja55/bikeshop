class Profile < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_housenr, presence: true
  validates :postcode, presence: true
  validates :city, presence: true
  validates :country, presence: true


  def full_name
    "#{first_name} #{last_name}"
  end

end
