class Option < ApplicationRecord
  belongs_to :optionable, polymorphic: true
end
