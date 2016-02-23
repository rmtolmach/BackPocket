class User
  include Mongoid::Document
  field :username, type: String
  field :email, type: String
  key :_id
  validates_presence_of :username
  references_many :games
end
