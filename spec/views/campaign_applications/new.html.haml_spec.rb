require 'rails_helper'

RSpec.describe "campaign_applications/new", type: :view do
  before(:each) do
    assign(:campaign_application, CampaignApplication.new(
      :read_book_1_title => "MyString",
      :read_book_2_title => "MyString",
      :read_book_3_title => "MyString",
      :read_book_4_title => "MyString"
    ))
  end

  it "renders new campaign_application form" do
    render

    assert_select "form[action=?][method=?]", campaign_applications_path, "post" do

      assert_select "input#campaign_application_read_book_1_title[name=?]", "campaign_application[read_book_1_title]"

      assert_select "input#campaign_application_read_book_2_title[name=?]", "campaign_application[read_book_2_title]"

      assert_select "input#campaign_application_read_book_3_title[name=?]", "campaign_application[read_book_3_title]"

      assert_select "input#campaign_application_read_book_4_title[name=?]", "campaign_application[read_book_4_title]"
    end
  end
end
