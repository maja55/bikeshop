FactoryGirl.define do
  factory :lineitem do
    count  { Faker::Number.number(1) }
  end
end
