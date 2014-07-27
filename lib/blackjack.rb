class Blackjack
  def scorehand(gameCard)
    numArray = gameCard.collect { |c| convertNum(c)}
    getSum(numArray)
  end

  def convertNum(card)
    case
          when card.match(/[A]/); 11
          when card.match(/[JQK]/); 10
          when card.match(/([2-9])/); card.gsub(/([2-9])/, '\1').to_i
          end
  end

  def getSum(gameCard)
    gameCard.sort! { |x, y| x <=> y}
    gameCard.inject { |sum, n|
      if n == 11 and sum > 10
        n = 1
      end
      sum + n
    }
  end

end