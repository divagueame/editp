FactoryBot.define do
    factory :page do
        title { Faker::Lorem.words }
        account # Same line as underneath
        # account { create(:account) }
    end
end