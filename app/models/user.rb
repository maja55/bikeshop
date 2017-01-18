class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  def has_profile?
    profile.present? && !profile.id.nil?
  end

end
