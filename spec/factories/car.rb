FactoryGirl.define do
  factory :car do
    association :manufacturer_id, factory: :manufacturer
    color "Pink"
    year "1984"
    sequence(:name) { |n| "Car#{n}"}
  end
end
