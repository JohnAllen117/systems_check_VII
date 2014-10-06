FactoryGirl.define do
  factory :manufacturer do
    sequence(:name) { |n| "Bugatti#{n}"}
    sequence(:country) { |n| "Germany#{n}"}
  end
end
