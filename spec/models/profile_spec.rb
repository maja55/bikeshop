require 'rails_helper'

  describe "Validating profile entries" do
    let(:user1)     { create(:user) }
    let!(:profile1) { create(:profile, user_id: user1.id) }

    it "Should be valid" do
      expect(profile1).to be_valid
    end

    it "Should not be valid without first_name" do
      profile1.first_name = ""
      expect(profile1).to_not be_valid
    end

    it "Should not be valid without a last_name" do
      profile1.last_name = nil
      expect(profile1).to_not be_valid
    end

  end
