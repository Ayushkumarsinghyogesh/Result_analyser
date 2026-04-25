class DailyResultJob < ApplicationJob
  queue_as :default

  def perform(date = Date.today)
    results = TestResult.where(timestamp: date.beginning_of_day..date.end_of_day)

    aggregated = results
      .group(:subject)
      .pluck(
        :subject,
        Arel.sql('MIN(marks)'),
        Arel.sql('MAX(marks)'),
        Arel.sql('COUNT(*)')
      )

    aggregated.each do |subject, low, high, count|
      DailyStatistic.upsert(
        {
          date: date,
          subject: subject,
          daily_low: low,
          daily_high: high,
          result_count: count,
          created_at: Time.current,
          updated_at: Time.current
        },
        unique_by: [:date, :subject]
      )
    end
  end
end