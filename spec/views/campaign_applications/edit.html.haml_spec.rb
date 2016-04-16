require 'rails_helper'

RSpec.describe "campaign_applications/edit", type: :view do
  before(:each) do
    @campaign_application = assign(:campaign_application, CampaignApplication.create!(
      :read_book_1_title => "MyString",
      :read_book_2_title => "MyString",
      :read_book_3_title => "MyString",
      :read_book_4_title => "MyString"
    ))
  end

  it "renders the edit campaign_application form" do
    render

    assert_select "form[action=?][method=?]", campaign_application_path(@campaign_application), "post" do

      assert_select "input#campaign_application_read_book_1_title[name=?]", "campaign_application[read_book_1_title]"

      assert_select "input#campaign_application_read_book_2_title[name=?]", "campaign_application[read_book_2_title]"

      assert_select "input#campaign_application_read_book_3_title[name=?]", "campaign_application[read_book_3_title]"

      assert_select "input#campaign_application_read_book_4_title[name=?]", "campaign_application[read_book_4_title]"
    end
  end
end
