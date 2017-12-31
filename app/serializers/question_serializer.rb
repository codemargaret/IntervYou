class QuestionSerializer < ActiveModel::Serializer
  attributes :text, :id, :user_id
end
