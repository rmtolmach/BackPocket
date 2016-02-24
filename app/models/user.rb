class User
  include Mongoid::Document
  field :username, type: String
  field :email, type: String
  validates_presence_of :username
  has_and_belongs_to_many :games
end
