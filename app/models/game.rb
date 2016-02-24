class Game
  include Mongoid::Document
  field :name, type: String
  field :num_of_players, type: Range
  field :equipment, type: String
  field :noise, type: Mongoid::Boolean
  field :time_range, type: Range
  field :description, type: String

  validates_presence_of :name
  # belongs_to :user, :inverse_of => :user, :class_name => "User"
  #below is not working. Above doesn't give me a huge error.
  has_and_belongs_to_many :users
end

## game should be many to many with users.
