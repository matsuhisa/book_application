class CampaignApplication < ActiveRecord::Base
  validate :read_book_1_title_presence, :read_book_1_title
  validates :read_book_2_date, presence: true, if: -> { read_book_2_title.present? }

  def read_book_1_title_presence
    unless read_book_1_title.blank?
      unless read_book_1_date.presence
        errors.add(:read_book_1_title, :read_book_1_title_presence)
      end
    end
  end

end
