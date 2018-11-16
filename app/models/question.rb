class Question < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_many :answers

end
