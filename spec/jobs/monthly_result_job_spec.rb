require 'rails_helper'

RSpec.describe MonthlyResultJob, type: :job do
  it "creates monthly stats when condition met" do
    date = Date.today.end_of_month

    25.times do |i|
      create(:daily_statistic,
        date: date.beginning_of_month + i,
        subject: "Math#{i}",
        daily_high: 100,
        daily_low: 50,
        result_count: 25
      )
    end

    expect {
      MonthlyResultJob.perform_now(date)
    }.to change { MonthlyStatistic.count }.by(1)
  end
end