require 'rails_helper'

RSpec.describe AnswersController, type: :controller do

  describe "show answer on question page", :type => :request do
    let!(:user) { FactoryBot.create(:user) }
    let!(:question) { FactoryBot.create(:question, :user_id => user.id) }
    FactoryBot.create(:answer, :user_id => user.id, :question_id => question.id) }

    before { get "/questions/#{question.id}/answers"}

    it 'returns all questions' do
      expect(response.body).to have_content(answer.text)
    end

end
