class UserNews
  include Mongoid::Document

  has_many :comments, dependent: :destroy

  belongs_to :user
 

  field :post, type: String
  field :like, type: Integer
end
