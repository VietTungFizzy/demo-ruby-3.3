def pick_a_card(cards)
  cards = cards.sort_by { _1[:rank] }
  case cards
    in [{rank:}, {rank: ^(rank + 1)}, {rank: ^(rank + 2)}]
      "You have three consecutive cards"
    else
      "You have no interesting cards,"
  end
end

puts pick_a_card([
  { rank: 7, suit: "Hearts" },
  { rank: 8, suit: "Diamonds" },
  { rank: 9, suit: "Clubs" }
])
