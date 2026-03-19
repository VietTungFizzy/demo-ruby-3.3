class TennisScorer
  PLAYERS = %i[server receiver]

  def initialize()
    @score = { server: 0, receiver: 0 }
  end

  def score
    if(@score[:server] >= 4 || @score[:receiver] >= 4)
      if @score[:server] >= 4 
        return @score[:receiver] < 3 ? "W-L" : "Advantage-server"
      elsif @score[:receiver] >= 4
        return  @score[:server] < 3 ? "L-W" : "Advantage-receiver"
      end
    elsif @score[:server] == 3 && @score[:receiver] == 3
      "Deuce"
    else
      "#{compute_score(:server)}-#{compute_score(:receiver)}"
    end
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

  def reset
    @score.each_key { |k| @score[k] = 0 }
  end
end
