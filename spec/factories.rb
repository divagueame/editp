# spec/factories.rb

FactoryBot.define do

#   factory :page do
#     title { "MyString" }
#     slug { "MyString" }
#     body { "MyText" }
#     parent { nil }
#     # account { nil }
#     position { 1 }
#   end

    factory(:user) do
      email { Faker::Internet.email }
      password { Faker::Internet.password }
    end
  end