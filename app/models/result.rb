class Result < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
