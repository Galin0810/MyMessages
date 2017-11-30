class Comment
  include Mongoid::Document

  belongs_to :user_news, optional: true
  belongs_to :user, optional: true
  
  field :title, type: String

  def user_name
    self.user.name
  end
end
