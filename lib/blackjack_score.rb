# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  score = 0
  possible_hand = hand.split("")

  possible_hand.each do |num|
    case hand_score_numbers
    when [\d].match(num)
    score += num
    end
    when
  end

end
