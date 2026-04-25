require 'rails_helper'

RSpec.describe DailyStatistic, type: :model do
  it "is valid with valid attributes" do
    stat = build(:daily_statistic)
    expect(stat).to be_valid
  end
end