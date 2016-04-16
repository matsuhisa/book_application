require 'rails_helper'

RSpec.describe "CampaignApplications", type: :request do
  describe "GET /campaign_applications" do
    it "works! (now write some real specs)" do
      get campaign_applications_path
      expect(response).to have_http_status(200)
    end
  end
end
