require 'rails_helper'

RSpec.describe "Recruitments", type: :request do
  describe "GET /recruitments" do
    before do
      @organizer = create(:organizer)
    end

    it "募集投稿画面が表示されること" do
      sign_in @organizer
      get new_recruitment_path
      expect(response).to have_http_status(200)
    end
  end
end
