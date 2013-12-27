FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "monkeys"
    password_confirmation "monkeys"
    title "CEO"
    company "Nike"

    factory :admin do
      admin true
    end

    factory :author do
    	author true
    end
  end
end