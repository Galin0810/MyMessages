class Comment
  include Mongoid::Document
  belongs_to :user_news
  field :title, type: String
  field :sub_comment, type: String
end
