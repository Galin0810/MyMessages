class Friend
  include Mongoid::Document
  
  belongs_to :user

  field :friend_id, type: String
end