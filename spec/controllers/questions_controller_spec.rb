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
end
