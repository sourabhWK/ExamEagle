class Question < ApplicationRecord
  belongs_to :language, dependent: :destroy
  belongs_to :topic, dependent: :destroy
  has_many :options
end
