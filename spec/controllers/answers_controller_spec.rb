require 'rails_helper'

RSpec.describe AnswersController, type: :controller do

  describe "get answers route", :type => :request do
    let!(:user) { FactoryBot.create(:user) }
    let!(:question) { FactoryBot.create(:question, :user_id => user.id) }
    let!(:answer) { FactoryBot.create_list(:answer, 2, :user_id => user.id, :question_id => question.id) }

    before { get "/questions/#{question.id}/answers" }

    it 'returns all answers' do
      expect(JSON.parse(response.body).size).to eq(2)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe "show one answer route", :type => :request do
    let!(:user) { FactoryBot.create(:user) }
    let!(:question) { FactoryBot.create(:question, :user_id => user.id) }
    let!(:answer) { FactoryBot.create(:answer, :user_id => user.id, :question_id => question.id) }

    before { get "/questions/#{question.id}/answers/#{answer.id}"}

    it 'returns the answer' do
      expect(response.body).to have_content(answer.text)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
