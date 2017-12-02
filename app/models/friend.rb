class Friend
  include Mongoid::Document

  field :friend_id, type: String
  
  belongs_to :user
  has_and_belongs_to_many :messages
end
