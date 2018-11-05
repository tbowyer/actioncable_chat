class Chatroom < ApplicationRecord
	has_many :chatroom_users, dependent: :destroy
	has_many :users, through: :chatroom_users, dependent: :destroy
	has_many :messages, dependent: :destroy

	scope :public_channels, ->{ where(direct_message: false) }
end
