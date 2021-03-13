require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /organizers/sessions/new" do
    it "主催者ログイン画面の表示に成功すること" do
      get new_organizer_session_path
      expect(response).to have_http_status(:success)
    end
  end
end
