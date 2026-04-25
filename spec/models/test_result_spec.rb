require 'rails_helper'

RSpec.describe TestResult, type: :model do
  it "is valid with valid attributes" do
    result = TestResult.new(
      student_name: "Ayush",
      subject: "Math",
      marks: 90,
      timestamp: Time.now
    )
    expect(result).to be_valid
  end

  it "is invalid without student_name" do
    result = TestResult.new(student_name: nil)
    expect(result).not_to be_valid
  end
end