# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user = User.create(username: "becca", email: "harry@potter.com", games: [
  # game = Game.create(name: "Popcorn", num_of_players: {"min"=>"3", "max"=>"30"}, equipment: "ball (soft)", noise: true, time_range: {"min"=>"5", "max"=>"30"}, description: "Players stand in a cricle. One person throws the ball in the air, claps once, and catches the ball without dropping it. All of the others players do the same as the ball makes its way around the circle. When the ball reaches the person who went first, they throw it in the air, clap twice and catch it. With each round, the number of claps increases. Players who don’t clap the proper number of times, or drop the ball are out. Last person standing is the winner.")
  # game.save
# ])
# user.save


seed_games = [
  { name: "Popcorn", num_of_players: {"min"=>"3", "max"=>"30"}, equipment: "ball (soft)", noise: true, time_range: {"min"=>"5", "max"=>"30"}, description: "Players stand in a cricle. One person throws the ball in the air, claps once, and catches the ball without dropping it. All of the others players do the same as the ball makes its way around the circle. When the ball reaches the person who went first, they throw it in the air, clap twice and catch it. With each round, the number of claps increases. Players who don’t clap the proper number of times, or drop the ball are out. Last person standing is the winner." },

  { name: "Protect the President", num_of_players: {"min"=>"7", "max"=>"20"}, equipment: "ball (soft)", noise: true, time_range: {"min"=>"5", "max"=>"30"}, description: "Players stand in a large circle with two people in the middle. One person is the president, and the other is secret service. Players try to hit the president with the ball while secret service protects the president. Secret service and president are free to move within the circle. Other players cannot move around. If the ball touches the president at any time, the person who threw the ball becomes the bodyguard. The bodyguard becomes the president and the former president joins the circle." },

  { name: "Wink", num_of_players: {"min"=>"8", "max"=>"20"}, equipment: nil, noise: nil, time_range: {"min"=>"10", "max"=>"30"}, description: "Players are sitting in a circle so they can see everyone. To start, everyone puts their heads down. The adult taps one player on the head. This person in the winker. Everyone opens their eyes. The winker eliminates other players by winking at them. If you are winked at, silently count to 5, then announce that you're out and put your head down. If the winker eliminates everyone, then they win. If a player thinks they know who the winker is, before they get winked at, they can raise their hand and say they have a suspect. Such as 'I suspect that Sally is the winker.' If Sally is not the winker, then the accuser is eliminated." },

  { name: "Musical Chairs", num_of_players: {"min"=>"5", "max"=>"30"}, equipment: "boombox", noise: true, time_range: {"min"=>"10", "max"=>"30"}, description: "You know drill. Don't forget to start with one less chair than there are players." },

  { name: "Dollar Bill Grab", num_of_players: {"min"=>"1", "max"=>"30"}, equipment: "Piece of paper", noise: nil, time_range: {"min"=>"5", "max"=>"15"}, description: "Players stand with their backs and heels against the wall. The adult puts a dollar bill (or coin) underneath the toe of one shoe on the ground. The player tries to bend down and pick up the dollar bill without losing balance while having your heels staying in the same place (like a toe touch against the wall)." },

  { name: "Radar", num_of_players: {"min"=>"6", "max"=>"15"}, equipment: "ball", noise: false, time_range: {"min"=>"5", "max"=>"30"}, description: "Place a chair in the middle of a circle of sitting players. Underneath the chair place a ball, set of keys, eraser or any object. Choose one player who will sit in the chair with a blindfold on or their eyes closed. The object of the game is for a player to steal the object placed underneath the chair, without the blindfolded member hearing them. Only one player can attempt a heist at a time, as determined by the adult. The person in the middle has two guesses where the can point if they hear someone. If they point directly at the player attempting the heist, the player in the chair joins the circle and someone else is chosen to sit in the chair." },


]

seed_games.each do |seed|
  new_game = Game.create(seed)
  new_game.save
end
