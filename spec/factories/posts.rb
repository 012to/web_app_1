FactoryBot.define do
  factory :post do
    title { Faker::String.random(length: 4) }
    content { Faker::String.random }

    association :user

    after(:create) do |post|
      create_list(:tag, 3, posts: [post])
    end
  end
end
