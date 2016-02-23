class User
  include Mongoid::Document
  has_many :games
  
  field :username, type: String
  field :email, type: String
end
