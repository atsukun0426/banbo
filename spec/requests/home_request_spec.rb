require 'rails_helper'

RSpec.describe "Home", type: :request do
  describe "GET /top" do
    it "Top画面が表示されること" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
