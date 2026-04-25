class MonthlyResultJob < ApplicationJob
  queue_as :default

  def perform(date = Date.today)
    start_date = date.beginning_of_month
    end_date   = date.end_of_month

    stats = DailyStatistic.where(date: start_date..end_date)

    return if stats.empty?

    MonthlyStatistic.create!(
      month: date.strftime("%Y-%m"),
      avg_high: stats.average(:daily_high),
      avg_low: stats.average(:daily_low),
      result_count: stats.sum(:result_count)
    )
  end
end