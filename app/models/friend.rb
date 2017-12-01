class Friend
  include Mongoid::Document
  
  has_and_belongs_to_many :user

end
