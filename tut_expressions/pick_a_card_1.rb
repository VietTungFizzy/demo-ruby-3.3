def pick_a_card(cards)
    case cards
    in [*, { rank: "Ace", suit: String => s}, *]
        "You have an Ace! Its suit is #{s}."
    in [*, { rank: r, suit: "Diamonds"}, *]
        "You have a Diamond! Its rank is #{r}."
    in [*, { rank: "Queen", suit: }, *]
        "You have a Queen! Its suit is #{suit}."
    else
        "You have no interesting cards,"
    end
end

puts pick_a_card([
    {rank: "Ace", suit: "Hearts"},
    {rank: "King", suit: "Diamonds"},
    {rank: "Queen", suit: "Clubs"}
])