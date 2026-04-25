# spec/requests/dashboard_spec.rb

require 'rails_helper'

RSpec.describe "Dashboards", type: :request do
  it "returns http success" do
    get root_path   # NOT "/index"
    expect(response).to have_http_status(:success)
  end
end