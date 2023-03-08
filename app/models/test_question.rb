class TestQuestion < ApplicationRecord
  has_one_attached :image
  belongs_to :language, dependent: :destroy
  belongs_to :topic, dependent: :destroy
  has_many :options

  validates :description, presence: true

  enum difficulty: [:easy, :medium, :hard]
  enum question_type: [:Single_choice_question , :multi_choice_question]
end