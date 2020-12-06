require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /users/sessions/new" do
    let!(:user) { User.new(username: 'test', email: 'test@example.com', password: "password") }

    it "ログイン画面の表示に成功すること" do
      get new_user_session_path
      expect(response).to have_http_status(:success)
    end

    # it 'ログインに成功すること' do
    # post user_session_path, params: { session_form: { username: username, password: password } }
    # expect(response).to redirect_to reservations_path
    # end
  end
end
