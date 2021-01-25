FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "name_#{n}" }
    sequence(:email) { |n| "sample#{n}@example.com" }
    password { "password" }
  end
end
