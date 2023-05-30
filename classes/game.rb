require_relative 'item'

class Game < Item
  attr_accessor :last_played_at

  def initialize(last_played_at, multiplayer, id: Random.rand(1..1000))
    super()
    @last_played_at = last_played_at
    @multiplayer = multiplayer
  end

  def can_be_archived?
    super && last_played_at < (Time.now - (2 * 365 * 24 * 60 * 60))
  end
end

game = Game.new(2000, 2)
puts game.last_played_at
