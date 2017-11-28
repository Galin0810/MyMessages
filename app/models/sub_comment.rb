class SubComment
  include Mongoid::Document

  belongs_to :comment
  
  field :title, type: String

end
