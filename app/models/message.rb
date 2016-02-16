class Message < ApplicationRecord
  after_create_commit { ActionCable.server.broadcast "chat_channel", name: self.user, message: self.text }
end
