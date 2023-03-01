class Language < ApplicationRecord
  has_many :questions
  has_many :topics, through: :questions
end
