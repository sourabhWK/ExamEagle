class Question < ApplicationRecord

  has_many :options, as: :optionable

  belongs_to :language, dependent: :destroy
  belongs_to :topic, dependent: :destroy
  
  enum difficulty: [:easy, :medium, :hard]
  enum question_type: [:Single_choice_question , :multi_choice_question]

end

