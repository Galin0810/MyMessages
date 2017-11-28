class FriendList
  include Mongoid::Document

  belongs_to :user

end
