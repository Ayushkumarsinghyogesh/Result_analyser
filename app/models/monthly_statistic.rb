class MonthlyStatistic < ApplicationRecord
  validates :month, presence: true
end