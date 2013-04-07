class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :content, type: String

  embedded_in :article
  embeds_many :subComments
  belongs_to :commenter, class_name: "User"

end
