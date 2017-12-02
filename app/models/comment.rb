class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user_news, optional: true
  belongs_to :user, optional: true
  
  field :title, type: String
end
