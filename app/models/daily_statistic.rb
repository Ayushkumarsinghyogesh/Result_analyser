class DailyStatistic < ApplicationRecord
  validates :date, :subject, presence: true
end