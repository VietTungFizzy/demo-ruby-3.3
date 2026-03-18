require_relative "tennis_scorer"

RSpec.describe TennisScorer do
  self.describe "basic scoring" do
    self.it "starts with a score of 0-0" do
      ts = TennisScorer.new
      self.expect(ts.score).to self.eq("0-0")
    end

    self.it "makes the score 15-0 if the server wins a point"
    self.it "makes the score 15-0 if the receiver wins a point"
    self.it "makes the score 15-15 after they both win a point"
  end
end
