300.times do
  TestResult.create!(
    student_name: "Student #{rand(1000)}",
    subject: ["Math", "Science", "English"].sample,
    marks: rand(30..100),
    timestamp: rand(5.days).seconds.ago
  )
end