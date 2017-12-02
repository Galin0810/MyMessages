class Message
  include Mongoid::Document

  has_and_belongs_to_many :friends 

  field :text, type: String

  def friend_name
    self.friend.name
  end
end
