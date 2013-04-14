class Feature
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :content, type: String

  defaut_scope desc(:created_at)

  has_and_belongs_to_many :articles, inverse_of: nil
  validates_presence_of :articles
end
