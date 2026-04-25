FactoryBot.define do
  factory :daily_statistic do
    sequence(:subject) { |n| "Math#{n}" }   # unique subject
    date { Date.today }
    daily_high { 100 }
    daily_low  { 50 }
    result_count { 25 }
  end
end