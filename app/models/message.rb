class Message
  include Mongoid::Document

  has_and_belongs_to_many :users

  field :text, type: String
end
