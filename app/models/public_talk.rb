class PublicTalk < ApplicationRecord
  validates :theme, presence: true
  validates :speaker, presence: true
  validates :public_talk_date, presence: false
  validates :speaker_contacts, presence: false
end
