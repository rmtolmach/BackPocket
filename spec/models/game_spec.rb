require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "validations" do
    let(:tag)   { Game.create(name: "Tag", equipment: "ball", description: "run, chase, laugh") }

    it "requires a name" do
      g = Game.new
      expect(g).to_not be_valid
      expect(g.errors.keys).to include :name
    end
  end
end
