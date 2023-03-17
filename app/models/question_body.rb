class QuestionBody < ApplicationRecord
  belongs_to :test_question
  has_many :options, as: :optionable
  # self.per_page = 1
end