def pick_a_card(cards)
  case cards
  in [*, { rank: }, { rank: ^rank}, *]
    "You have a pair of #{rank}s." 
  else
    "You have no interesting cards,"
  end
end

puts pick_a_card([
{rank: "Ace", suit: "Hearts"}, {rank: "Ace", suit: "Diamonds"}, {rank: "Queen", suit: "Clubs"}
])
