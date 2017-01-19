class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :orders

  def has_profile?
    profile.present? && !profile.id.nil?
  end

  def full_name
    profile.first_name + " " + profile.last_name
  end

end
