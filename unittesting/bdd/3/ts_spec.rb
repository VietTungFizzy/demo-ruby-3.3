require_relative "tennis_scorer"

RSpec.describe TennisScorer do
  describe "basic scoring" do
    it "starts with a score of 0-0" do
      ts = TennisScorer.new
      expect(ts.score).to eq("0-0")
    end

    it "makes the score 15-0 if the server wins a point" do
      ts = TennisScorer.new
      ts.give_point_to(:server)
      expect(ts.score).to eq("15-0")
    end

    it "raises an error if it doesn't know the player" do
      ts = TennisScorer.new
      expect { ts.give_point_to(:referee) }.to raise_error(RuntimeError)
    end

    it "makes the score 15-0 if the receiver wins a point"
    it "makes the score 15-15 after they both win a point"
  end
end
