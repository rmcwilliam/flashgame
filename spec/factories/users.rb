FactoryGirl.define do
  factory :users do
    fullname 'ryan mcwilliam'
    username 'rmcwilliam'
    email 'rmcwilliam@gmail.com'

    trait :julia do
      fullname ''
      username 'julia01'
      email 'julia@gmail.com'
    end
  end
end














