class Game
  include Mongoid::Document
  field :name, type: String
  field :num_of_players, type: Range
  field :equipment, type: String
  field :noise, type: Mongoid::Boolean
  field :time_range, type: Range
  field :description, type: String
end
