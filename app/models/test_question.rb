class TestQuestion < ApplicationRecord
  has_one_attached :image
  belongs_to :language, dependent: :destroy
  belongs_to :topic, dependent: :destroy
  has_many :question_bodies
  # accepts_nested_attributes_for :question_bodies, allow_destroy: true, reject_if: :all_blank

  validates :description, presence: true

  enum difficulty: [:easy, :medium, :hard]
  enum question_type: [:Single_choice_question , :multi_choice_question]

  
end