class UserNews
  include Mongoid::Document
  has_many :comments
  field :post, type: String
  field :like, type: Integer
end