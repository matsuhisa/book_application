json.array!(@campaign_applications) do |campaign_application|
  json.extract! campaign_application, :id, :read_book_1_title, :read_book_1_date, :read_book_2_title, :read_book_2_date, :read_book_3_title, :read_book_3_date, :read_book_4_title, :read_book_4_date
  json.url campaign_application_url(campaign_application, format: :json)
end
