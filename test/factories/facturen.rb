# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :factuur do
    ontvanger Faker::Company.name
    bedrag    Faker::Number.number 4
  end
end
