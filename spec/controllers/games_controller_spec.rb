require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  let(:tag)   { Game.create(name: "go fish", equipment: "ball", description: "run, chase, laugh") }

  let(:keys)   { ["_id", "description", "equipment", "name", "noise", "num_of_players", "time_range", "user_ids"] }

  describe "GET 'index'" do
    it "is successful" do
      get :index
      expect(response.response_code).to eq 200
    end

    it "returns json" do
      get :index
      expect(response.header['Content-Type']).to include 'application/json'
    end

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
      expect(@response[0].keys).to eq keys
    end

    after :each do
      Game.all.destroy
    end

  end
end

end
