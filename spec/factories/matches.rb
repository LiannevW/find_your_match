FactoryGirl.define do
  factory :match do
    date    { Faker::Date.between(2.days.ago, Date.today) }
  end
end
