require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  describe "get all questions route", :type => :request do
    let!(:user) { FactoryBot.create(:user) }
    let!(:question) { FactoryBot.create_list(:question, 2, :user_id => user.id) }

    before { get '/questions'}

    it 'returns all questions' do
      expect(JSON.parse(response.body).size).to eq(2)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe "show one question route", :type => :request do
    let!(:user) { FactoryBot.create(:user) }
    let!(:question) { FactoryBot.create(:question, :user_id => user.id) }

    before { get "/questions/#{question.id}" }

    it 'returns the question' do
      expect(JSON.parse(response.body)).to eq({
        "id" => question.id,
       "text" => question.text,
       "user_id" => question.user_id,
        })
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe "does not allow a user to create a question without logging in", :type => :request do

    before { post "/questions" }

    it 'returns status code 404' do
      expect(response).to have_http_status(:unauthorized)
    end
  end

end
