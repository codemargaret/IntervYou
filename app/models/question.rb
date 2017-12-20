class Question < ApplicationRecord
  belongs_to :user, optional: true
  has_many :answers
  has_many :questions_tags
end
