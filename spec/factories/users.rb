FactoryBot.define do
  factory :user do
    email: 'test@test.com',
    nickname: 'Test',
    name: 'Test One',
    password: 'testpassword'
  end
end
