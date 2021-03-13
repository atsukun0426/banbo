require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /users/sessions/new" do
    it "ユーザーログイン画面の表示に成功すること" do
      get new_user_session_path
      expect(response).to have_http_status(:success)
    end
  end
end
