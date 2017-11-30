class Friend
  include Mongoid::Document
  
  belongs_to :user


  def self.is_friend?(id)
    self.each do |friend|
      friend.user_id == id ? true : false
    end
  end

end
