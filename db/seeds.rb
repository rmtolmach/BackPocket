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

  { name: "Zookeeper", num_of_players: {"min"=>"15", "max"=>"40"}, equipment: nil, noise: true, time_range: {"min"=>"10", "max"=>"30"}, description: "You need an area large enough for your group to run around in. Select 1-3 players to be the Zookeepers and have the rest of the group line up on either side of the field. Each player must select an animal and keep it a secret from everyone else. Zookeepers will then call out commands such as “Escape the Zoo if your animal has feathers!” or “Escape the Zoo if your animal swims.” If the command applies to a player, they try to run to the other side of the field without the Zookeepers tagging them. If a member is tagged they become a stone and must sit down where they were tagged." },

  { name: "Uncle Sam", num_of_players: {"min"=>"15", "max"=>"40"}, equipment: nil, noise: true, time_range: {"min"=>"10", "max"=>"30"}, description: "You need an area large enough for your group to run around in. Select 1-3 players to be Uncle Sam and the rest of the group line up on either side of the field. All players chant, \"Uncle Sam, Uncle Sam, may we cross your river?!\" Uncle Sam says, \"only if you're wearing green\" or \"only if you're in the 5th grade,\" etc. If the condition applies to you, you run across the river and try not to get tagged by Uncle Sam. If you are tagged, you are now a rock in the river. You sit down and can tag people if they come near you." },

  { name: "Triangle Tag", num_of_players: {"min"=>"4", "max"=>"20"}, equipment: nil, noise: true, time_range: {"min"=>"5", "max"=>"30"}, description: "You need an area large enough for your group to move around in. Groups of four. Every group is playing their own game. Three players hold hands and the fourth player is \"it.\" Whoever is \"it\" chooses one of the three players to tag. When the game starts, the player who is \"it\" tries to tag the player they chose while the two players holding hands with that player try to prevent them from getting tagged. Reaching across the triangle, either over or under the hands, is not allowed. When the player is tagged, switch roles. " },

  { name: "Rock, Paper, Scissors Tag", num_of_players: {"min"=>"10", "max"=>"40"}, equipment: nil, noise: true, time_range: {"min"=>"10", "max"=>"30"}, description: "You need a moderately large area for your group to run around in. Two teams. Each team huddles up and quietly decides to throw \"rock,\" \"paper,\" or \"scissors.\" Players stand in the middle shoulder to shoulder with their team and face to face with the opposing team. On \"Go!\" everyone plays one game of rock, paper, scissors with the person in front of them, using the pre-determined rock, paper, or scissors. If you loose, you turn around and run to the wall of the gym, or past a prefefined line. If you make it without getting tagged by the other team, you are safe, if you were tagged, you are now a part of the other team. If you win, you try to tag people from the other team. The game ends when everyone ends up on one team."},

  { name: "People to People", num_of_players: {"min"=>"2", "max"=>"50"}, equipment: nil, noise: false, time_range: {"min"=>"5", "max"=>"15"}, description: "Players find a partner and stand next to them. Whatever combination of body parts you call out, the partners have to make those connections. For example, \"back to back,\" \"toe to toe,\" \"knee to elbow.\" When you call \"People to People,\" players find a new partner. You can play so each command adds on the previous so it starts looking like twister. Or not."}


]

seed_games.each do |seed|
  new_game = Game.create(seed)
  new_game.save
end
