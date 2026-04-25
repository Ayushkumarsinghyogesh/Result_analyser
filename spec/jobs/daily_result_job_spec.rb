require 'rails_helper'

RSpec.describe DailyResultJob, type: :job do
  include FactoryBot::Syntax::Methods
  it "creates daily statistics" do
    create(:test_result, subject: "Math", marks: 50)
    create(:test_result, subject: "Math", marks: 90)

    DailyResultJob.perform_now

    stat = DailyStatistic.last

    expect(stat.daily_low).to eq(50)
    expect(stat.daily_high).to eq(90)
    expect(stat.result_count).to eq(2)
  end
end