require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "#full_name" do
    it "is composed of first and last name" do
      profile = profile (:Pietje)
      expect(profile.first_name).to eq "Pietje"
    end
  end
end
