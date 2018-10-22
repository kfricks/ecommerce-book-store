require "faker"

FactoryBot.define do
  factory :user do
    name { "Bob" }
    email { Faker::Internet.email }
    password { "asdfasdf" }

    factory :author do
      author { true }
    end

    factory :admin do
      admin { true }
    end
  end
end
