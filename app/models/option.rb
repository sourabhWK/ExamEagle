class Option < ApplicationRecord
  belongs_to :optionable, polymorphic: true
  validates :text, presence: true
  has_many :results
end
