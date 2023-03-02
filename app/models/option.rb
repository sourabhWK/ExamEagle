class Option < ApplicationRecord
  belongs_to :question, dependent: :destroy
  belongs_to :test_question, dependent: :destroy
end
