class Message < ApplicationRecord
  after_create_commit { SendMessageJob.perform_later(self) }
end
