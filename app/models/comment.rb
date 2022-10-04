class Comment
  include Mongoid::Documents

  field :response, type: String

  belongs_to :user
  belongs_to :appointment

end