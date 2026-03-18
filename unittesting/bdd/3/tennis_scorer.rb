class TennisScorer
  attr_reader :server, :receiver

  def initialize()
    @server = 0
    @receiver = 0    
  end

  def score
    "#{server}-#{receiver}"
  end
end
