FactoryBot.define do
  factory :note do
    title { Faker::Lorem.unique.sentence }
    content { Faker::Lorem.paragraph }
  end
end
