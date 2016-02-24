# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(username: "becca", email: "harry@potter.com", games: [
  Game.create(name: "Popcorn", num_of_players: {"min"=>"3", "max"=>"30"}, equipment: "ball (soft)", noise: true, time_range: {"min"=>"5", "max"=>"30"}, description: "Players stand in a cricle. One person throws the ball in the air, claps once, and catches the ball without dropping it. All of the others players do the same as the ball makes its way around the circle. When the ball reaches the person who went first, they throw it in the air, clap twice and catch it. With each round, the number of claps increases. Players who don’t clap the proper number of times, or drop the ball are out. Last person standing is the winner.")
])
user.save
