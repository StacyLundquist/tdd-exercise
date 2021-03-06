require_relative './test_helper'

describe 'Blackjack Score' do
  it 'can calculate the score for a pair of number cards' do

    # Arrange
    hand = [3, 4]

    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal 7
  end

  it 'facecards have values calculated correctly' do
    hand = ['Queen', 'King']

    score = blackjack_score(hand)

    expect(score).must_equal 20
  end

  it 'calculates aces as 11 where it does not go over 21' do
    hand = ['Ace', 2]

    score = blackjack_score(hand)

    expect(score).must_equal 13
  end

  it 'calculates aces as 1, if an 11 would cause the score to go over 21' do
    hand = ['Ace', 'Jack', 2]

    score = blackjack_score(hand)

    expect(score).must_equal 13
  end

  it 'raises an ArgumentError for invalid cards' do
    hand = [14, 18]

    expect{blackjack_score(hand)}.must_raise ArgumentError
  end

  it 'raises an ArgumentError for scores over 21' do
    hand = ['Queen', 'King', 3]



    expect{blackjack_score(hand)}.must_raise ArgumentError
  end
end
