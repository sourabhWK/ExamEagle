class QuestionBody < ApplicationRecord
  belongs_to :test_question
  has_many :options, as: :optionable
  has_many :results
  # self.per_page = 1
  validates :text, presence: true
end