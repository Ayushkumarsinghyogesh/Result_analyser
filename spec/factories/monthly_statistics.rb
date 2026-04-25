FactoryBot.define do
  factory :monthly_statistic do
    month { "MyString" }
    avg_low { 1.5 }
    avg_high { 1.5 }
    result_count { 1 }
  end
end
