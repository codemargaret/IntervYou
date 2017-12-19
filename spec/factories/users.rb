FactoryBot.define do
  factory :user do
    id(1)
    email('test@test.com')
    nickname('Test')
    name('Test One')
    password('testpassword')

    # factory :user_with_questions do
    #   transient do
    #     questions_count 5
    #   end
    #
    #   after(:create) do |user, evaluator|
    #     create_list(:question, evaluator.questions_count, user: user)
    #   end
    # end
  end
end
