class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  field :message, type: String
  field :friend_id, type: String
end
