class UserNews
  include Mongoid::Document

  has_many :comments, dependent: :destroy
 

  field :post, type: String
  field :like, type: Integer
end
