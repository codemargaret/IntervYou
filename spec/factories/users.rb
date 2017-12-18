FactoryBot.define do
  factory :user do
    id(1)
    email('test@test.com')
    nickname('Test')
    name('Test One')
    password('testpassword')
  end
end
