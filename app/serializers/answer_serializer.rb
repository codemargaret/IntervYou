class AnswerSerializer < ActiveModel::Serializer
  attributes :text, :id, :user_id, :question_id
end
