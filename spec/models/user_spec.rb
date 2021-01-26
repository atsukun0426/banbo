require 'rails_helper'

RSpec.describe User, type: :model do
  describe "create" do
    let(:user) { FactoryBot.build(:user) }
    # let(:user01) { User.new(username: 'test', email: 'test@example.com', password: "password") }
    let(:user02) { User.new(username: nil, email: 'test@example02.com', password: "password") }
    let(:user03) { User.new(username: 'test', email: nil, password: "password") }
    let(:user04) { User.new(username: 'test', email: 'test@example03.com', password: nil) }
    let(:user05) { User.new(username: 'test', email: user01.email, password: "password") }

    it "ユーザーネーム、メール、パスワードがある場合、有効である" do
      expect(user).to be_valid
    end

    it "ユーザーネームがない場合、無効である" do
      expect(user02).not_to be_valid
    end

    it "メールアドレスがない場合、無効である" do
      expect(user03).not_to be_valid
    end

    it "パスワードがない場合、無効である" do
      expect(user04).not_to be_valid
    end
  end
end
