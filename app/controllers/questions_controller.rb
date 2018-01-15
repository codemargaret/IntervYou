class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @questions = Question.all
    json_response(@questions)
  end

  def show
    @question = Question.find(params[:id])
    json_response(@question)
  end

  def create
    add_user_id_to_params
    @question = Question.create!(question_params)
    json_response(@question, :created)
  end

  def update
    add_user_id_to_params
    @question = Question.find(params[:id])
    if @question.update!(question_params)
      render status: 200, json: {
        message: "Your question has been updated."
      }
    end
  end

  def destroy
    add_user_id_to_params
    @question = Question.find(params[:id])
    if @question.destroy!
      render status: 200, json: {
        message: "Your question has been destroyed."
      }
    end
  end

  private

  def add_user_id_to_params
    params[:user_id] = current_user.try(:id)
  end

  def question_params
    params.permit(:id, :user_id, :text)
  end
end
