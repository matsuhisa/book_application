require 'rails_helper'

RSpec.describe "campaign_applications/show", type: :view do
  before(:each) do
    @campaign_application = assign(:campaign_application, CampaignApplication.create!(
      :read_book_1_title => "Read Book 1 Title",
      :read_book_2_title => "Read Book 2 Title",
      :read_book_3_title => "Read Book 3 Title",
      :read_book_4_title => "Read Book 4 Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Read Book 1 Title/)
    expect(rendered).to match(/Read Book 2 Title/)
    expect(rendered).to match(/Read Book 3 Title/)
    expect(rendered).to match(/Read Book 4 Title/)
  end
end
