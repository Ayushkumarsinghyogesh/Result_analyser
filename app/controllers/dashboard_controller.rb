class DashboardController < ApplicationController
  def index
    @daily_stats = DailyStatistic.order(date: :desc).limit(10)
    @monthly_stats = MonthlyStatistic.order(created_at: :desc).limit(10)
  end

  def submit_result
    TestResult.create!(result_params)
    redirect_to root_path, notice: "Result added"
  end

  def run_daily_job
    DailyResultJob.perform_now
    redirect_to root_path, notice: "Daily job executed"
  end

  def run_monthly_job
    date = Date.today
    MonthlyResultJob.perform_now(date)

    redirect_to root_path, notice: "Monthly job executed"
  end

  private

  def result_params
    params.permit(:student_name, :subject, :marks, :timestamp)
  end
end