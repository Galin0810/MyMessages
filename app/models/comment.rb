class Comment
  include Mongoid::Document

  belongs_to :user_news
  has_many :sub_comments

  field :title, type: String

end
