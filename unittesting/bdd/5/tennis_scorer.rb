class TennisScorer
  PLAYERS = %i[server receiver]

  def initialize()
    @score = { server: 0, receiver: 0 }
  end

  def score
    "#{compute_score(:server)}-#{compute_score(:receiver)}"
  end

  def give_point_to(player)
    raise "Unknown player #{player}" unless PLAYERS.include?(player)
    @score[player] += 1
  end

  def compute_score(player)
    raise "Unknown player #{player}" unless PLAYERS.include?(player)
    display_score = @score[player] * 15
    display_score -= 5 if display_score > 40
    display_score
  end
end
