Rails.application.routes.draw do
  root "dashboard#index"

  namespace :api do
    resources :results, only: [:create]
  end

  post "/submit_result", to: "dashboard#submit_result"
  post "/run_daily_job", to: "dashboard#run_daily_job"
  post "/run_monthly_job", to: "dashboard#run_monthly_job"
end