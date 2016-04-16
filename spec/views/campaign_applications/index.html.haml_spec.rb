require 'rails_helper'

RSpec.describe "campaign_applications/index", type: :view do
  before(:each) do
    assign(:campaign_applications, [
      CampaignApplication.create!(
        :read_book_1_title => "Read Book 1 Title",
        :read_book_2_title => "Read Book 2 Title",
        :read_book_3_title => "Read Book 3 Title",
        :read_book_4_title => "Read Book 4 Title"
      ),
      CampaignApplication.create!(
        :read_book_1_title => "Read Book 1 Title",
        :read_book_2_title => "Read Book 2 Title",
        :read_book_3_title => "Read Book 3 Title",
        :read_book_4_title => "Read Book 4 Title"
      )
    ])
  end

  it "renders a list of campaign_applications" do
    render
    assert_select "tr>td", :text => "Read Book 1 Title".to_s, :count => 2
    assert_select "tr>td", :text => "Read Book 2 Title".to_s, :count => 2
    assert_select "tr>td", :text => "Read Book 3 Title".to_s, :count => 2
    assert_select "tr>td", :text => "Read Book 4 Title".to_s, :count => 2
  end
end
