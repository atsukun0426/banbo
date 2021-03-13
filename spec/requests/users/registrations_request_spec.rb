require 'rails_helper'

RSpec.describe "Registrations", type: :request do
  describe "GET /users/registrations/new" do
    before do
      @user = create(:user)
    end

    it "ユーザー新規登録画面の表示に成功すること" do
      get new_user_registration_path
      expect(response).to have_http_status(:success)
    end

    it "プロフィール編集画面が表示されること" do
      sign_in @user
      get edit_user_registration_path
      expect(response).to have_http_status(200)
    end
  end
end
