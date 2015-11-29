FactoryGirl.define do
  factory :user do
    fullname 'ryan mcwilliam'
    username 'rmcwilliam'
    email 'rmcwilliam@gmail.com'
    password_digest 'passwordpassword'

    trait :julia do
      fullname 'julia kofron'
      username 'jkofron'
      email 'jkofron@gmail.com'
      password_digest 'passwordpassword'
    end
  end
end














