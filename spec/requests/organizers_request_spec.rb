require 'rails_helper'

RSpec.describe "Organizers", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/organizers/show"
      expect(response).to have_http_status(:success)
    end
  end

end
