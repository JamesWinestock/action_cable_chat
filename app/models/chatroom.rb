class Chatroom < ApplicationRecord
  has_many :messages, dependant: :destroy
  has_many :users, through: :messages
  validates :topic, presence: true, uniqueness: true, case_sensitive: false
end
