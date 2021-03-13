require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /users/sessions/new" do
    let!(:user) { User.new(id: 1, username: 'test', email: 'test@example.com', password: "password") }
    let(:user01) { User.create(username: 'test01', email: 'test01@example.com', password: "password") }

    it "ログイン画面の表示に成功すること" do
      get new_user_session_path
      expect(response).to have_http_status(:success)
    end
  end
end
