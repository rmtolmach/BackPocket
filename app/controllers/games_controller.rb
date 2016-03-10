class GamesController < ApplicationController
  def index
    games = Game.all
    render :json => games.as_json, :status => :ok
  end

  def login
    
  end
end
