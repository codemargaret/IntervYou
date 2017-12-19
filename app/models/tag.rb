class Tag < ApplicationRecord
  has_many :questions_tags
end
