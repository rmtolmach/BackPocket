require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  let(:tag)   { Game.create(name: "Tag", equipment: "ball", description: "run, chase, laugh") }

  let(:keys)   { ["name", "equipment", "id", "description", "noise", "num_of_players", "time_range"] }

  context "the returned json object" do
    before :each do
      tag
      get :index
      @response = JSON.parse(response.body)
    end

    it "is an array of game objects" do
      expect(@response).to be_an_instance_of Array
      expect(@response.length).to eq 1
    end

    it "has the right keys" do
      expect(@response.keys.sort).to eq keys
    end

  end


end
