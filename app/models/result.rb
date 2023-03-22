class Result < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :option
  belongs_to :question_body
end
