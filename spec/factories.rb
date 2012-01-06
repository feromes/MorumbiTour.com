FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@example.com" }
    password "foobar"
    staff true
    # email { "#{username}@example.com" }
    
    factory :admin do
      admin true
    end
  end
end