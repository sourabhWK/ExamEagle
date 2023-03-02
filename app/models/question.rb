class Question < ApplicationRecord

  has_many :options

  belongs_to :language, dependent: :destroy
  belongs_to :topic, dependent: :destroy
  


end

