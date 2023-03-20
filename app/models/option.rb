class Option < ApplicationRecord
  belongs_to :optionable, polymorphic: true
  validates :text, presence: true
end
