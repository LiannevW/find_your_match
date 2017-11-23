FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    profile  { build(:profile) }
  end
  factory :another_user do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    profile  { build(:profile) }
  end
end
