class Topic < ApplicationRecord
  has_many :test_questions
  has_many :questions
end
