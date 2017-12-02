class Friend
  include Mongoid::Document

  field :friend_id, type: String
  
  has_and_belongs_to_many :user
  has_and_belongs_to_many :messages 

end