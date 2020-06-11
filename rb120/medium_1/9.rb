class Card
  CARD_RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'King', 'Queen', 'Ace']

  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    CARD_RANKS.index(rank) <=> CARD_RANKS.index(other.rank)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @cards = []
    populate_cards
  end

  def draw
    @cards.shuffle!
    @cards.pop
  end

  private

  def populate_cards
    RANKS.each do |rank|
      SUITS.each { |suit| @cards.push(Card.new(rank, suit)) }
    end
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

deck = Deck.new
drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.