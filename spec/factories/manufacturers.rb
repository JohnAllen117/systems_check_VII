FactoryGirl.define do
  factory :manufacturers do
    sequence(:name) { |n| "Bugatti#{n}"}
    sequence(:country) { |n| "Germany#{n}"}
  end
end
