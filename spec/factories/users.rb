FactoryGirl.define do
  factory :users do
    fullname 'ryan mcwilliam'
    username 'rmcwilliam'
    email 'rmcwilliam@gmail.com'

    trait :julia do
      fullname 'julia kofron'
      username 'jkofron'
      email 'jkofron@gmail.com'
    end
  end
end














