class Friend
  include Mongoid::Document
  
  belongs_to :user

end