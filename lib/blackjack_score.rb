# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  score = 0
  aces_in_hand = 0

  hand.each do |num|
    if num.instance_of?(Integer)
      score += num
    else
      score += 10
    end
    if num == "Ace"
      score += 1
      aces_in_hand += 1
    end
    if !VALID_CARDS.include?(num)
      raise ArgumentError.new("That's not a card")
    end
  end

  if score > 21 && aces_in_hand > 0
    score -= 10
  end

  if score > 21
    raise ArgumentError.new("Whoops, BUSTED")
  end

  return score
end
