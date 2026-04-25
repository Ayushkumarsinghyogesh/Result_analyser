class Api::ResultsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    result = TestResult.new(result_params)

    if result.save
      render json: { message: "Saved" }, status: :created
    else
      render json: { errors: result.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def result_params
    params.require(:result).permit(:student_name, :subject, :marks, :timestamp)
  end
end