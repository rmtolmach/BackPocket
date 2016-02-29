class WelcomeController < ApplicationController
  def index
    games = Game.all
## render some json here
  end

end
