FactoryGirl.define do
  factory :product do
    model      { Faker::Lorem.word }
    brand      { Faker::Lorem.word }
    price      { Faker::Number.number(4) }
    category   { Faker::Lorem.words }
    gender     { Faker::Lorem.words }
  end
end
