FactoryBot.define do
  factory :user do
    id(Faker::Number.between(1, 1000))
    email(Faker::Internet.email)
    nickname('Test')
    name('Test One')
    password(Faker::Internet.password(8))
  end
end
