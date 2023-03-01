class Question < ApplicationRecord
  belongs_to :language
  belongs_to :topic
  has_many :options
end
