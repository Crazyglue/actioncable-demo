class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "chat_channel", name: message.user, message: message.text
  end
end
