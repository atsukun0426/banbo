require 'rails_helper'

RSpec.describe User, type: :model do
  describe "create" do
    let(:user01) { User.new(username: 'test', email: 'test@example.com', password: "password") }
    let(:user02) { User.new(username: nil, email: 'test@example02.com', password: "password") }
    let(:user03) { User.new(username: 'test', email: nil, password: "password") }
    let(:user04) { User.new(username: 'test', email: 'test@example03.com', password: nil) }
    let(:user05) { User.new(username: 'test', email: user01.email, password: "password") }

    it "ユーザーネーム、メール、パスワードがある場合、有効である" do
      expect(user01).to be_valid
    end

    it "ユーザーネームがない場合、無効である" do
      user02.valid?
      expect(user02.errors[:username]).to include("can't be blank")
    end

    it "メールアドレスがない場合、無効である" do
      user03.valid?
      expect(user03.errors[:email]).to include("can't be blank")
    end

    it "パスワードがない場合、無効である" do
      user04.valid?
      expect(user04.errors[:password]).to include("can't be blank")
    end
  end
end
