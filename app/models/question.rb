class Question < ApplicationRecord
  validates :name, presence: false
  validates :question, presence: true
  validates :contacts, presence: false
end
