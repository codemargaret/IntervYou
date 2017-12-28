class AnswersController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers
    json_response(@answers)
  end

  def show
    @answer = Answer.find(params[:id])
    json_response(@answer)
  end

  def create
    add_user_id_to_params
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create!(answer_params)
    json_response(@answer, :created)
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update!(answer_params)
      render status: 200, json: {
        message: "Your answer has been updated."
      }
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    if @answer.destroy!
      render status: 200, json: {
        message: "Your answer has been destroyed."
      }
    end
  end

  private

  def add_user_id_to_params
    params[:user_id] = current_user.try(:id)
  end

  def answer_params
    params.permit(:question_id, :user_id, :text)
  end
end
