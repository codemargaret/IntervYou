class Seed

  def self.begin
    seed = Seed.new
    seed.destroy_seeds
    seed.generate_users
    seed.generate_questions
    seed.generate_answers
  end

  def destroy_seeds
    User.destroy_all
    Question.destroy_all
    Answer.destroy_all
  end

  def generate_users
    User.create(
      email: 'user@user.com',
      nickname: 'User',
      name: 'User One',
      password: 'password'
    )

    User.create(
      email: 'admin@admin.com',
      nickname: 'Admin',
      name: 'Admin One',
      password: 'adminpassword',
      admin: true
    )
  end

  def generate_questions
    10.times do |i|
      user = User.all.sample
      Question.create!(
        text: Faker::DrWho.quote ,
        user_id: user.id,
      )
    end
  end

  def generate_answers
    10.times do |i|
      user = User.all.sample
      question = Question.all.sample
      Answer.create!(
        text: Faker::ChuckNorris.fact,
        user_id: user.id,
        question_id: question.id
      )
    end
  end

end

Seed.begin

p "You now have #{User.count} users in your db"
p "You now have #{Question.count} questions in your db"
p "You now have #{Answer.count} answers in your db"
