class Comment
  include Mongoid::Document

  field :response, type: String

  embedded_in :appointment

end