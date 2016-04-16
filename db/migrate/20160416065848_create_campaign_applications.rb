class CreateCampaignApplications < ActiveRecord::Migration
  def change
    create_table :campaign_applications do |t|
      t.string :read_book_1_title
      t.date :read_book_1_date
      t.string :read_book_2_title
      t.date :read_book_2_date
      t.string :read_book_3_title
      t.date :read_book_3_date
      t.string :read_book_4_title
      t.date :read_book_4_date

      t.timestamps null: false
    end
  end
end
