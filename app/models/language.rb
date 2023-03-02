class Language < ApplicationRecord
  has_many :questions
  has_many :test_questions
  has_many :topics, through: :test_questions
end
