FactoryBot.define do
  factory :test_result do
    student_name { "Test Student" }
    subject { "Math" }
    marks { 50 }
    timestamp { Time.current }
  end
end