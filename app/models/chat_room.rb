class ChatRoom < ApplicationRecord
  belongs_to :owner
  has_many :messages, dependent: :destroy
end
