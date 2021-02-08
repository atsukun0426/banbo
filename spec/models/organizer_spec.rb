require 'rails_helper'

RSpec.describe Organizer, type: :model do
  describe "create" do
    let(:organizer01) { User.new(username: 'test', email: 'test@example.com', password: "password") }
    let(:organizer02) { User.new(username: nil, email: 'test@example02.com', password: "password") }
    let(:organizer03) { User.new(username: 'test', email: nil, password: "password") }
    let(:organizer04) { User.new(username: 'test', email: 'test@example03.com', password: nil) }
    let(:organizer05) { User.new(username: 'test', email: organizer01.email, password: "password") }

    it "ユーザーネーム、メール、パスワードがある場合、有効である" do
      expect(organizer01).to be_valid
    end

    it "ユーザーネームがない場合、無効である" do
      expect(organizer02).not_to be_valid
    end

    it "メールアドレスがない場合、無効である" do
      expect(organizer03).not_to be_valid
    end

    it "パスワードがない場合、無効である" do
      expect(organizer04).not_to be_valid
    end
  end
end
