require 'rails_helper'

RSpec.describe "Registrations", type: :request do
  describe "GET /organizers/registrations/new" do
    before do
      @organizer = create(:organizer)
    end

    it "主催者新規登録画面の表示に成功すること" do
      get new_organizer_registration_path
      expect(response).to have_http_status(:success)
    end

    it "プロフィール編集画面が表示されること" do
      sign_in @organizer
      get edit_organizer_registration_path
      expect(response).to have_http_status(200)
    end
  end
end
