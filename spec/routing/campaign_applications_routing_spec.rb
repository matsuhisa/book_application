require "rails_helper"

RSpec.describe CampaignApplicationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campaign_applications").to route_to("campaign_applications#index")
    end

    it "routes to #new" do
      expect(:get => "/campaign_applications/new").to route_to("campaign_applications#new")
    end

    it "routes to #show" do
      expect(:get => "/campaign_applications/1").to route_to("campaign_applications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/campaign_applications/1/edit").to route_to("campaign_applications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/campaign_applications").to route_to("campaign_applications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/campaign_applications/1").to route_to("campaign_applications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/campaign_applications/1").to route_to("campaign_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campaign_applications/1").to route_to("campaign_applications#destroy", :id => "1")
    end

  end
end
