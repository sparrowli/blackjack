# require 'spec'
# require_relative '../lib/blackjack'
require 'blackjack'
describe Blackjack, "#scorehand" do

  before() do
    @blackJack = Blackjack.new
  end

  it "should return 11 when card is A" do

    gameCard = "A"
    expect(@blackJack.convertNum(gameCard)).to be(11)
  end

  it "should return 10 when card is J or Q or K" do
    gameCard = "J"
    expect(@blackJack.convertNum(gameCard)).to be(10)
  end

  it "should return responding num when card is 2..9" do
    gameCard = "7"
    expect(@blackJack.convertNum(gameCard)).to be(7)
  end

  it "should return the sum of the card nums" do
    gameCard = [11, 10]
    expect(@blackJack.getSum(gameCard)).to be(21)
  end

  it "should return the convert 11 to 1 when sum is greater than 21 " do
    gameCard = [5, 4, 3, 2, 11, 10]
    expect(@blackJack.getSum(gameCard)).to be(25)
  end

  it "should return the convert 11 to 1 when sum is greater than 21 " do
    gameCard = [11, 11, 3, 2, 11, 10]
    expect(@blackJack.getSum(gameCard)).to be(18)
  end

  it "should return the sum of all cards' num" do
    gameCard = %w{A 5 4 3 2 J}
    expect(@blackJack.scorehand(gameCard)).to be(25)
  end

end