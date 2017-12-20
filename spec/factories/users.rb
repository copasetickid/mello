FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password 'password'
    first_name 'Tori'
    last_name 'Kelly'
  end
end
