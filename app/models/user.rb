class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  
  has_many :friends
  has_many :user_news
  has_many :comments
  has_many :messages
 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :name, type: String
  field :birthday, type: Date
  field :sex, type: String
  

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  def is_friend(friend_id)
    count = 0

    self.friends.each do |friend|
      if friend.friend_id == friend_id.to_s
        count += 1
      end
    end

    return count > 0 ? true : false
  end
end
